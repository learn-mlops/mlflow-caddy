#! /bin/bash

set -eo pipefail

ARTIFACT_DESTINATION_ROOT=${ARTIFACT_DESTINATION_ROOT:-"/data/artifact"}
BACKEND_STORE_URI=${BACKEND_STORE_URI:-"sqlite:////data/mlflow.db"}
LISTENING_PORT=${LISTENING_PORT:-5000}

if [ $# -eq 0 ]; then
  mlflow server --host 0.0.0.0 --port ${LISTENING_PORT} \
    --artifact-destination-root $ARTIFACT_DESTINATION_ROOT \
    --backend-store-uri ${BACKEND_STORE_URI}
else
  eval "$@"
fi
