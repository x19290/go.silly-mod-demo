#!/bin/sh

set -eux

# git clone --recursive https://github.com/x19290/go.silly-mod-demo
# cd go.silly-mod-demo/2more

rm -f go.*
go mod init user
go mod edit -replace github.com/x19290/go.silly-mod=../go.silly-mod # option
go get github.com/x19290/go.silly-mod

go run github.com/x19290/go.silly-mod/2demo
