#!/bin/sh

# Execute syntax and phpunit tests
if [ -f ../../../.git/hooks/pre-commit ]; then
    if ! grep -q ".git/hooks/appventus.pre-commit.tester" ../../../.git/hooks/pre-commit; then
        cat pre-commit.add.sample >> ../../../.git/hooks/pre-commit
    fi
else
    touch ../../../.git/hooks/pre-commit
    cat pre-commit.sample >> ../../../.git/hooks/pre-commit
fi
