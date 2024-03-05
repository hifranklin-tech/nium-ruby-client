#!/usr/bin/env bash
openapi-generator generate \
  --generator-name ruby \
  --library=faraday \
  --input-spec ./vendor/nium-openapi/nium.yaml \
  --output . \
  --package-name=nium \
  --additional-properties="moduleName=NiumClient"

# Fix multi ApiError class
rm ./lib/nium_client/models/api_error.rb
