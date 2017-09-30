#!/usr/bin/env bash

if [ "$TRAVIS_PULL_REQUEST" = false ]; then
    if [ "$TRAVIS_BRANCH" = "master" ]; then
        ./gradlew gitPublishPush --stacktrace
    else
        ./gradlew asciidoctor
    fi
else
    ./gradlew asciidoctor
fi
