#!/usr/bin/env bash

# ./script/patch-npm-version.ts

# VERSION=$(jq -r '.version' package.json )
# npm version $VERSION --workspaces --force

# # This is not great, but we need to get the dependencies to workspaces
# jq --arg version $VERSION \
#     '.dependencies."quicktype-core" = $version | .dependencies."quicktype-graphql-input" = $version | .dependencies."quicktype-typescript-input" = $version' \
#     package.json > package.1.json
# mv package.1.json package.json

# npm publish


# jq --arg version $VERSION \
#     '.dependencies."quicktype-core" = $version' \
#     packages/quicktype-typescript-input/package.json > package.1.json
    
# mv package.1.json packages/quicktype-typescript-input/package.json

# jq --arg version $VERSION \
#     '.dependencies."quicktype-core" = $version' \
#     packages/quicktype-graphql-input/package.json > package.1.json
    
# mv package.1.json packages/quicktype-graphql-input/package.json

# npm publish --workspaces --if-present

# 发布 quicktype-core
cd packages/quicktype-core
npm publish --access public

cd ../..
cd packages/quicktype-graphql-input
npm publish --access public

cd ../..
cd packages/quicktype-typescript-input
npm publish --access public
cd ../..

# 发布 quicktype 指定为公开库
npm publish --access public
