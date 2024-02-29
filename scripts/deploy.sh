#bin/bash
gcloud functions deploy hello-node-function \
  --gen2 \
  --runtime=nodejs20 \
  --region=us-east1 \
  --source=. \
  --entry-point=helloGET \
  --trigger-http \
  --allow-unauthenticated
