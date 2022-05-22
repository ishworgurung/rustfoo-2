#!/usr/bin/env bash

set -eufx -o pipefail

export PAGER=cat

cargo clean
cargo install cargo-lambda
cargo lambda build --release --target aarch64-unknown-linux-gnu
cargo lambda build --release --target aarch64-unknown-linux-gnu --output-format zip

aws --profile super lambda delete-function --function-name rustTest

sleep 10s

aws --profile super lambda create-function --function-name rustTest \
  --handler bootstrap \
  --zip-file fileb://./target/lambda/lambda-foo/bootstrap.zip \
  --runtime provided.al2 \
  --architectures arm64 \
  --role arn:aws:iam::747873671055:role/AWSLambda \
  --environment Variables={RUST_BACKTRACE=1} \
  --tracing-config Mode=Active || true

sleep 10s

aws --profile super lambda update-function-code --function-name rustTest \
  --zip-file fileb://./target/lambda/lambda-foo/bootstrap.zip \
  --architectures arm64


rm -f output.json

sleep 10s

aws --profile super lambda invoke \
  --cli-binary-format raw-in-base64-out \
  --function-name rustTest \
  --payload '{"command": "Say Hi!"}' \
  output.json

jq < output.json
