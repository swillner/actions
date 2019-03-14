FROM alpine:latest

RUN apk add --no-cache git

LABEL "com.github.actions.name"="Filter branch"
LABEL "com.github.actions.description"="Filter for a branch (regardless of event ref)"
LABEL "com.github.actions.icon"="terminal"
LABEL "com.github.actions.color"="gray-dark"

LABEL "repository"="https://github.com/swillner/actions"
LABEL "homepage"="https://github.com/swillner/actions"
LABEL "maintainer"="Sven Willner <sven.willner@gmail.com>"

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
