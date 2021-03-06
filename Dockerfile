FROM debian:buster-slim

RUN apt update \
    && apt install -y curl \
    && curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3 \
    && chmod 700 get_helm.sh \
    && ./get_helm.sh \
    && curl -sL https://aka.ms/InstallAzureCLIDeb | bash
