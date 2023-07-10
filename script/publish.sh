#!/usr/bin/env bash

# brew install jq
./script/patch-npm-version.ts

VERSION=$(jq -r '.version' package.json )
npm version $VERSION --workspaces --force

# This is not great, but we need to get the dependencies to workspaces
jq --arg version $VERSION \
    '.dependencies."@karosli/quicktype-core" = $version | .dependencies."@karosli/quicktype-graphql-input" = $version | .dependencies."@karosli/quicktype-typescript-input" = $version' \
    package.json > package.1.json
mv package.1.json package.json

# 指定为公开库
npm publish --access public


jq --arg version $VERSION \
    '.dependencies."@karosli/quicktype-core" = $version' \
    packages/quicktype-typescript-input/package.json > package.1.json
    
mv package.1.json packages/quicktype-typescript-input/package.json

jq --arg version $VERSION \
    '.dependencies."@karosli/quicktype-core" = $version' \
    packages/quicktype-graphql-input/package.json > package.1.json
    
mv package.1.json packages/quicktype-graphql-input/package.json

# 带 @karosli 的库，默认被认为是私有库，需要添加 --access public 修改为公开权限
npm publish --workspaces --if-present --access public