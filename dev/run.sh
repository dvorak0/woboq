#!/usr/bin/env bash
set -euo pipefail

# Resolve based on this script (not PWD)
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_DIR="$(dirname "${SCRIPT_DIR}")"
DIR_NAME_RAW="$(basename "${PROJECT_DIR}")"
DIR_NAME_TAG="$(echo "${DIR_NAME_RAW}" | tr '[:upper:]' '[:lower:]')"

IMAGE_NAME="${IMAGE_NAME:-${DIR_NAME_TAG}-dev}"
CONTAINER_NAME="${CONTAINER_NAME:-${DIR_NAME_TAG}-dev}"
PROJECT_MOUNT="${PROJECT_DIR}"
: "${GDK_SCALE:=1}"

# --- Pick GPU flags based on architecture ---
ARCH="$(uname -m)"
if [[ "${ARCH}" == "x86_64" ]]; then
    GPU_ARGS=( --device nvidia.com/gpu=all )
elif [[ "${ARCH}" == "aarch64" || "${ARCH}" == "arm64" ]]; then
    GPU_ARGS=( --runtime nvidia )
else
    GPU_ARGS=()
    echo "[WARN] Unknown architecture '${ARCH}', running without GPU flags" >&2
fi

exists(){ command -v "$1" >/dev/null 2>&1; }

# Create container if missing
if ! docker ps -a --format '{{.Names}}' | grep -qx "${CONTAINER_NAME}"; then
  if exists xhost; then xhost +local:docker >/dev/null 2>&1 || true; fi

  docker run --name "${CONTAINER_NAME}" \
    "${GPU_ARGS[@]}" \
    --privileged \
    --detach -it \
    --shm-size=16g \
    --network host \
    -e DISPLAY="${DISPLAY:-:0}" \
    -e GDK_SCALE="${GDK_SCALE}" \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -v /dev:/dev \
    -v /etc/localtime:/etc/localtime \
    -v /mnt:/mnt \
    --device-cgroup-rule='c 81:* rmw' \
    --device-cgroup-rule='c 234:* rmw' \
    -v "${PROJECT_MOUNT}":"/${DIR_NAME_RAW}" \
    "${IMAGE_NAME}"
fi

# Start if stopped
if [ "$(docker inspect -f '{{.State.Running}}' "${CONTAINER_NAME}")" != "true" ]; then
  docker start "${CONTAINER_NAME}" >/dev/null
fi

exec docker exec -it "${CONTAINER_NAME}" bash

