[![Build Status](https://travis-ci.org/octaspire/easing.svg?branch=master)](https://travis-ci.org/octaspire/easing) [![Coverage Status](https://codecov.io/gh/octaspire/easing/coverage.svg?branch=master)](https://codecov.io/gh/octaspire/easing/coverage.svg?branch=master)

Easing functions in standard C99.

To build on Raspberry Pi, Debian or Ubuntu (16.04 LTS) system:

```shell
sudo apt-get install cmake git
git clone https://github.com/octaspire/easing.git
cd easing/build
cmake ..
make
```

To build on Arch Linux (Arch Linux ARM) system:

```shell
sudo pacman -S cmake git gcc make
git clone https://github.com/octaspire/easing.git
cd easing/build
cmake ..
make
```

To run the unit tests:

```shell
test/octaspire-easing-test-runner
```
