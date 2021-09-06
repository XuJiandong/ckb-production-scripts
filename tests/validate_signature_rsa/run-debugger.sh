#!/bin/bash

echo 'riscv64-unknown-elf-gdb build/validate_signature_rsa_sim -ex "target remote 127.0.0.1:9999"'
CKB_DEBUGGER=ckb-debugger
$CKB_DEBUGGER --simple-binary ../../build/validate_signature_rsa_sim --listen 127.0.0.1:9999 rsa bench

