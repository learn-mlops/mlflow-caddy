#! /bin/bash

set -eo pipefail

DEFAULT_ARTIFACT_ROOT=${DEFAULT_ARTIFACT_ROOT:-"/data/artifact"}
BACKEND_STORE_URI=${BACKEND_STORE_URI:-"sqlite:////data/mlflow.db"}
LISTENING_PORT=${LISTENING_PORT:-5000}

if [ $# -eq 0 ]; then
  mlflow server --host 0.0.0.0 --port ${LISTENING_PORT} \
    --default-artifact-root $DEFAULT_ARTIFACT_ROOT \
    --backend-store-uri ${BACKEND_STORE_URI}
else
  eval "$@"
fi