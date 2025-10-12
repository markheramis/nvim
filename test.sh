#!/bin/bash

# Run Neovim health check and capture output
output=$(nvim --headless -c 'checkhealth' -c 'w! /dev/stdout' -c 'q' 2>&1)

# Check for errors or warnings
if echo "$output" | grep -E "ERROR|error" > /dev/null; then
    echo "Health check failed: Errors detected"
    echo "$output"
    exit 1
elif echo "$output" | grep -E "WARNING|warning" > /dev/null; then
    echo "Health check warning: Issues detected"
    echo "$output"
    exit 2
else
    echo "Health check passed: No issues detected"
    exit 0
fi