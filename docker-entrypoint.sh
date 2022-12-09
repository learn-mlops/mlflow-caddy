#! /bin/bash

set -eo pipefail

ARTIFACTS_DESTINATION=${ARTIFACTS_DESTINATION:-"/data/artifact"}
BACKEND_STORE_URI=${BACKEND_STORE_URI:-"sqlite:////data/mlflow.db"}
LISTENING_PORT=${LISTENING_PORT:-5000}

if [ $# -eq 0 ]; then
  mkdir -p $ARTIFACTS_DESTINATION
  mlflow server \
    --artifacts-destination $ARTIFACTS_DESTINATION \
    --backend-store-uri ${BACKEND_STORE_URI} \
    --host 0.0.0.0 --port ${LISTENING_PORT} \
else
  eval "$@"
fi
