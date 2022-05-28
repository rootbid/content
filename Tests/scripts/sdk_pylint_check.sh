#!/bin/bash

echo Checking for sdk related pylint errors

pylint_tests_result="$(python3 -m pylint --errors-only ./Tests | grep demisto_sdk)"
pylint_utils_result="$(python3 -m pylint --errors-only ./Utils | grep demisto_sdk)"

if [ -n "$pylint_tests_result" ]; then
    echo Pylint result on Test directory: "$pylint_tests_result"
fi
if [ -n "$pylint_utils_result" ]; then
    echo Pylint result on Utils directory: "$pylint_utils_result"
    exit 1
fi
if [ -n "$pylint_tests_result" ]; then
    exit 1    
fi

echo No SDK related pylint errors
