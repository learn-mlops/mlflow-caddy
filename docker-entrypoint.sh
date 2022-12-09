#! /bin/bash

set -eo pipefail

ARTIFACTS_DESTINATION=${ARTIFACTS_DESTINATION:-"/data/artifact"}
BACKEND_STORE_URI=${BACKEND_STORE_URI:-"sqlite:////data/mlflow.db"}
LISTENING_PORT=${LISTENING_PORT:-5000}

if [ $# -eq 0 ]; then
  mkdir -p $ARTIFACT_DESTINATION_ROOT
  mlflow server --host 0.0.0.0 --port ${LISTENING_PORT} \
    --serve-artifacts --artifacts-destination $ARTIFACTS_DESTINATION \
    --backend-store-uri ${BACKEND_STORE_URI}
else
  eval "$@"
fi
