#!/usr/bin/env bash
set -euo pipefail

# Always resolve relative to this script's folder
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_DIR="$(dirname "${SCRIPT_DIR}")"
DIR_NAME_RAW="$(basename "${PROJECT_DIR}")"
DIR_NAME="$(echo "${DIR_NAME_RAW}" | tr '[:upper:]' '[:lower:]')"  # for image tags

IMAGE_NAME="${IMAGE_NAME:-${DIR_NAME}-dev}"
DOCKERFILE="${DOCKERFILE:-${SCRIPT_DIR}/Dockerfile}"

USER_UID=1001
USER_GID=1001
VIDEO_GID="$(getent group video | cut -d: -f3 || echo 44)"
USER_NAME="$(id -un)"

echo "Building ${IMAGE_NAME} with:"
echo "  USER_UID=${USER_UID} USER_GID=${USER_GID} VIDEO_GID=${VIDEO_GID} USER_NAME=${USER_NAME} DIR_NAME=${DIR_NAME_RAW}"

docker build -t "${IMAGE_NAME}" \
  --build-arg USER_UID="${USER_UID}" \
  --build-arg USER_GID="${USER_GID}" \
  --build-arg VIDEO_GID="${VIDEO_GID}" \
  --build-arg USER_NAME="${USER_NAME}" \
  --build-arg DIR_NAME="${DIR_NAME_RAW}" \
  -f "${DOCKERFILE}" "${SCRIPT_DIR}"

