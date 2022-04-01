#!/bin/bash

# -------------------------------------------------------------------------------------------------------------------- #
# INITIALIZATION.
# -------------------------------------------------------------------------------------------------------------------- #

init() {
  # Vars.
  COPR_TOKEN="${1}"
  PKG_NAME="${2}"

  # Apps.
  curl="$( command -v curl )"

  # Run.
  copr_run
}

# -------------------------------------------------------------------------------------------------------------------- #
# GIT: CLONE REPOSITORY.
# -------------------------------------------------------------------------------------------------------------------- #

copr_run() {
  ${curl} -X POST "https://copr.fedorainfracloud.org/webhooks/custom/${COPR_TOKEN}/${PKG_NAME}/"
}

# -------------------------------------------------------------------------------------------------------------------- #
# -------------------------------------------------< INIT FUNCTIONS >------------------------------------------------- #
# -------------------------------------------------------------------------------------------------------------------- #

init "$@"; exit 0
