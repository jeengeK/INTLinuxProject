#!/bin/bash
echo "Generating secret..."
secret=(814c5723c21e7e90a3eae36c8df3c513)
# shellcheck disable=SC2128
echo "Secret generated: $secret"
# shellcheck disable=SC2086
echo $secret > .secret
