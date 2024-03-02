#!/bin/bash

# Extract the value of FUNCTION_NAME from constants.js
# FUNCTION_NAME=$(sed -n 's/const FUNCTION_NAME = "\(.*\)";/\1/p' constants.js)

gcloud functions deploy 'hello-node-function' \
  --gen2 \
  --runtime=nodejs20 \
  --region=us-east1 \
  --source=. \
  --entry-point=helloGET \
  --trigger-http \
  --allow-unauthenticated
