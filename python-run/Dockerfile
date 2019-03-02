ARG PYTHON_VERSION=latest
FROM python:$PYTHON_VERSION

RUN pip install --upgrade pip

LABEL "com.github.actions.name"="Run for Python"
LABEL "com.github.actions.description"="Run command in a Python-supporting environment"
LABEL "com.github.actions.icon"="command"
LABEL "com.github.actions.color"="blue"

LABEL "repository"="https://github.com/swillner/actions"
LABEL "homepage"="https://github.com/swillner/actions"
LABEL "maintainer"="Sven Willner <sven.willner@gmail.com>"

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
