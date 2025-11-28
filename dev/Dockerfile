FROM ubuntu:24.04

ARG USER_UID=1001
ARG USER_GID=1001
ARG VIDEO_GID=44
ARG USER_NAME=dev
ARG DIR_NAME=project
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends \
    sudo build-essential cmake git git-lfs openssh-client \
    nano vim less tree htop tmux curl wget zip unzip \
 && rm -rf /var/lib/apt/lists/*

# --- create the user (handle primary group GID collisions) ---
RUN set -eux; \
  PRIMARY_GID="${USER_GID}"; \
  PRIMARY_G="$(getent group "${PRIMARY_GID}" | cut -d: -f1 || true)"; \
  if [ -n "${PRIMARY_G}" ]; then \
    echo "Using existing group ${PRIMARY_G} (GID ${PRIMARY_GID}) for ${USER_NAME}"; \
    useradd -m -u "${USER_UID}" -g "${PRIMARY_GID}" -G sudo -s /bin/bash "${USER_NAME}"; \
  else \
    echo "Creating group ${USER_NAME} with GID ${PRIMARY_GID}"; \
    groupadd -g "${PRIMARY_GID}" "${USER_NAME}"; \
    useradd -m -u "${USER_UID}" -g "${PRIMARY_GID}" -G sudo -s /bin/bash "${USER_NAME}"; \
  fi; \
  echo "%sudo ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/nopasswd; \
  chmod 0440 /etc/sudoers.d/nopasswd

# --- ensure container user is in the host's VIDEO_GID ---
RUN set -eux; \
  TARGET_GID="${VIDEO_GID}"; \
  EXIST_G="$(getent group "${TARGET_GID}" | cut -d: -f1 || true)"; \
  if [ -n "${EXIST_G}" ]; then \
    echo "GID ${TARGET_GID} already used by group: ${EXIST_G}; adding ${USER_NAME} to it."; \
    usermod -aG "${EXIST_G}" "${USER_NAME}"; \
  else \
    if getent group video >/dev/null; then \
      echo "Setting 'video' group to GID ${TARGET_GID}"; \
      groupmod -g "${TARGET_GID}" video; \
    else \
      echo "Creating 'video' group with GID ${TARGET_GID}"; \
      groupadd -g "${TARGET_GID}" video; \
    fi; \
    usermod -aG video "${USER_NAME}"; \
  fi

USER ${USER_NAME}

# WORKDIR is the same as the project folder name
WORKDIR /${DIR_NAME}

RUN echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc

