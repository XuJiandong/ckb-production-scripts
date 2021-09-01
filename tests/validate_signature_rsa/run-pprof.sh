#!/bin/bash

CKB_DEBUGGER=ckb-debugger
$CKB_DEBUGGER --simple-binary ../../build/validate_signature_rsa_sim --pprof=pprof.txt
cat pprof.txt | inferno-flamegraph > rsa.svg

#echo "Functions statistics: "
#cat pprof.txt | python folder.py
