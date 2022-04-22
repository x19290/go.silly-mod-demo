#!/bin/sh

set -eux

cp local-go.mod go.mod
rm -f go.sum
go mod tidy
go run .
