#!/bin/bash

#make -C ../.. validate_signature_rsa_sim-via-docker

export RUST_LOG=debug
CKB_DEBUGGER=ckb-debugger
$CKB_DEBUGGER --simple-binary ../../build/validate_signature_rsa_sim rsa bench
RUST_LOG=
