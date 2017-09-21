#!/bin/bash

rm -rf output/* && \

docker run --rm -v "${PWD}":/local swaggerapi/swagger-codegen-cli generate \
    -i http://petstore.swagger.io/v2/swagger.json \
    -l typescript-angular \
    -c /local/codegen-config.json \
    -o /local/output/petstore-angular \
    -t /local/templates && \

cd output/petstore-angular && \
npm install || true && \
cd ../../ || return