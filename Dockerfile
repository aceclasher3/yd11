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

RUN apt-get update && \
apt-get install -y \
  ffmpeg \
  curl \
  ca-certificates \
  python3 \
&& rm -rf /var/lib/apt/lists/*

# نصب yt-dlp
RUN curl -L https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp \
-o /usr/local/bin/yt-dlp && \
chmod +x /usr/local/bin/yt-dlp

RUN apt-get update && \
    apt-get install -y ffmpeg curl ca-certificates && \
    rm -rf /var/lib/apt/lists/*

# نصب yt-dlp
RUN curl -L https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp \
    -o /usr/local/bin/yt-dlp && \
    chmod +x /usr/local/bin/yt-dlp


WORKDIR /app
CMD ["bash"]
