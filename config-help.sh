#!/bin/bash

docker run --rm -v "${PWD}":/local swaggerapi/swagger-codegen-cli config-help \
    -l typescript-angular