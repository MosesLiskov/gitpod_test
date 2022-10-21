#! /bin/sh

wget -O record.zip $1
unzip -d record record.zip
exec julia --threads=auto --eval '
using ElectionGuardVerifier

er = load("record");

println(check(er, "vr.json"))' "$@"
