#!/bin/bash

# TODO Uncommoent `deno fmt` line. deno 1.14.2 formatter will changes many files.
# format source code
# deno fmt

# run the tests 
docker-compose up --build --exit-code-from tests
