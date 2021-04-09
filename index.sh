rm -rf ./out

docker run --rm \
  -v ${PWD}:/local openapitools/openapi-generator-cli generate \
  -i /local/api.json \
  -g typescript-axios \
  -c /local/config.json \
  -o /local/out \