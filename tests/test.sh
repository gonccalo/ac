#!/bin/bash

../AC -l 5 R_A
../AD R_A.co
# test with other levels, with reference...
md5sum -c MD5SUMS | awk '{if($2!="OK") printf "\033[0;31m%s\033[0m\n", $2; else printf "\033[0;32m%s\033[0m\n", $2}'