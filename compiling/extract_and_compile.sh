#!/usr/bin/env bash

tar --gunzip -xf NthPrime.tgz
cd NthPrime
gcc -o NthPrime nth_prime.c main.c nth_prime.h
./NthPrime $1
