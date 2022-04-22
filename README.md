# Golang accessing a local/remote module

A module accessing [github.com/x19290/go.silly-mod](
  https://github.com/x19290/go.silly-mod
  ) locally/remotely.

## Install

```sh
git clone --recursive https://github.com/x19290/go.silly-mod-demo.git
```

## Local access

```sh
cd 0test
./local.sh

cd ../1print
./local.sh
```

## Remote access

```sh
cd 0test
./remote.sh

cd ../1print
./remote.sh
```

## Impossible access

```sh
cd 2more
./impossible.sh
```

## **/*.go

- 0test/ (bbxtest package)
  - blackbox_test.go
    - -> github.com/x19290/go.silly-mod (.Public())  
    - -> github.com/x19290/go.silly-mod/1testdata (.Version)

- 1print/ (main package)
  - print.go
    - -> github.com/x19290/go.silly-mod (.Public())
    - -> github.com/x19290/go.silly-mod/1testdata (.Version)

- 2more/ (main package)
  - impossible.go
    - -> github.com/x19290/go.silly-mod/2demo
    (.../2demo is a program, not an importable package)