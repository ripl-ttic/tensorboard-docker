#!/usr/bin/env bash

# check if the variable TF_LOGS was set
if [ -z ${TF_LOGS+x} ]; then
  TF_LOGS=DEFAULT_TF_LOGS
fi

# run tensorboard
tensorboard \
  --logdir "${TF_LOGS}" \
  "$@"
