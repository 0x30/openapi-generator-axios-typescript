rm -rf ./out

docker run --rm \
  -v ${PWD}:/local openapitools/openapi-generator-cli generate --skip-validate-spec \
  -i /local/api.json \
  -g typescript-axios \
  -c /local/config.json \
  -o /local/out \

## 移除以下文件
rm -rf ./out/common.ts ./out/configuration.ts ./out/git_push.sh