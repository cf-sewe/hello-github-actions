FROM golang:1.12.4

LABEL "inspiredby"="https://github.com/actions/bin/blob/master/sh/Dockerfile @ 2019 04 24"
LABEL "maintainer"="Lothar Schulz <http://bit.ly/2zVLbWh>"
LABEL "version"="0.0.3"

LABEL "com.github.actions.name"="golang / make / bash for GitHub Actions"
LABEL "com.github.actions.description"="Runs one or more golang / make / bash commands in an Action"
LABEL "com.github.actions.icon"="terminal"
LABEL "com.github.actions.color"="blue"

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]