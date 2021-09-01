#!/bin/bash

make -C ../.. validate_signature_rsa_sim-via-docker

CKB_DEBUGGER=ckb-debugger
$CKB_DEBUGGER --simple-binary ../../build/validate_signature_rsa_sim
