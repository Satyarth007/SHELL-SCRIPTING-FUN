#!/bin/bash

Red = $'\e[1;31m'
Green = $'\e[1;32m'
Blue = $'\e[1;34m'

while True
do
    clear
    echo $Blue $(date +%T)
    sleep 1s
done

#logic : Clear Print Time sleep 1s , repeat the process