#!/usr/bin/env bash

set -ex

go build -o syft.t ./cmd/syft
go test -tags=e2e -race $(go list ./test/...)
