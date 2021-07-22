#!/usr/bin/env bash

# From https://github.com/benfred/py-cpp-demangle/blob/13a22fd/ci/install_rust.sh
# https://www.benfrederickson.com/writing-python-extensions-in-rust-using-pyo3/
if [ ! -d ~/rust-installer ]; then
    set -x
    mkdir ~/rust-installer
    curl --tlsv1.2 -sSf https://sh.rustup.rs -o ~/rust-installer/rustup.sh
    sh ~/rust-installer/rustup.sh --default-toolchain=stable -y
    set +x
fi