FROM python:3.11-alpine

# OCI labels
LABEL org.opencontainers.image.source="https://github.com/sysengquick/container-build-workflow"
LABEL org.opencontainers.image.description="Sample container for GitHub action build workflow"
LABEL org.opencontainers.image.licenses="Apache-2.0"

RUN python3 -m pip install poetry~=1.8.2

RUN python3 -m pip install pydantic

RUN python3 -m pip install dnspython

RUN python3 -m pip install fqdn

ENTRYPOINT ["/bin/sh"]