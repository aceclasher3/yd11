FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

# Install deps
RUN apt-get update -qq && \
    apt-get install -y --no-install-recommends \
    ffmpeg \
    curl \
    jq \
    zip \
    ca-certificates && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /app
CMD ["bash"]
