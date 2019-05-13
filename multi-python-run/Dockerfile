FROM docker:stable

LABEL "com.github.actions.name"="Run for multiple Python versions"
LABEL "com.github.actions.description"="Run command in a Python-supporting environment for multiple Python versions"
LABEL "com.github.actions.icon"="command"
LABEL "com.github.actions.color"="blue"

LABEL "repository"="https://github.com/swillner/actions"
LABEL "homepage"="https://github.com/swillner/actions"
LABEL "maintainer"="Sven Willner <sven.willner@gmail.com>"

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
