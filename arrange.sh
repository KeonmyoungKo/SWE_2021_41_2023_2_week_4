#!/bin/bash

uppercase_list=()
lowercase_list=()

for upper in {A..Z}; do
    uppercase_list+=("$upper")
done

for lower in {a..z}; do
    lowercase_list+=("$lower")
done

for (( i=0; i<${#uppercase_list[@]} ; i++ )); do
    uppercase="${uppercase_list[i]}"
    lowercase="${lowercase_list[i]}"
    mv "files/$uppercase"* "$lowercase/"
done

for (( i=0; i<${#lowercase_list[@]} ; i++ )); do
    lowercase="${lowercase_list[i]}"
    mv "files/$lowercase"* "$lowercase/"
done