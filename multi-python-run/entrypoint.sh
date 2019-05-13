#!/bin/sh -e
if [ -z "$PYTHON_VERSION" ]
then
    PYTHON_VERSION="latest"
fi
ENV_FILE=$(mktemp)
tr ' ' '\n' > "$ENV_FILE" <<EOF
HOME
GITHUB_WORKFLOW
GITHUB_ACTION
GITHUB_ACTOR
GITHUB_REPOSITORY
GITHUB_EVENT_NAME
GITHUB_EVENT_PATH
GITHUB_WORKSPACE
GITHUB_SHA
GITHUB_REF
GITHUB_TOKEN
$ENV
EOF
for VERSION in $PYTHON_VERSION
do
    echo
    echo "========================================================="
    echo " Python ${VERSION}"
    echo "========================================================="
    docker build -t "py${VERSION}" -f - /github <<EOF
FROM python:${VERSION}
RUN pip install --upgrade pip $PIP_PACKAGES
ADD . /github
WORKDIR /github/workspace
EOF
    echo "---------------------------------------------------------"
    printf "%s\\n" "$@" "exit" \
        | docker run \
              --env-file "$ENV_FILE" \
              --interactive \
              "py${VERSION}" \
              bash -e
done
rm "$ENV_FILE"
