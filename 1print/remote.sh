#!/bin/sh

set -eux

cp remote-go.mod go.mod
rm -f go.sum
go mod tidy
go run .
