# Stage 1
FROM debian:latest AS build
COPY . /blog
WORKDIR /blog

# Set up Hugo
ARG HUGO_VERSION=0.111.1
ARG HUGO_THEME='hello-friend'
ARG HUGO_BINARY=hugo_extended_${HUGO_VERSION}_Linux-64bit.tar.gz
ARG HUGO_DOWNLOAD_URL=https://github.com/spf13/hugo/releases/download/v${HUGO_VERSION}/${HUGO_BINARY}
RUN set -x && \
    apt-get update && \
    apt-get install -y wget ca-certificates git && \
    wget -O /tmp/${HUGO_BINARY} ${HUGO_DOWNLOAD_URL} && \
    tar -C /tmp -xzf /tmp/${HUGO_BINARY} && \
    mv /tmp/hugo /usr/bin

# Next 2 lines are form single stage build, want to do article about this size
#RUN /usr/bin/hugo && ls -l
#RUN cp -fR /blog/public/* /usr/share/nginx/html

# Init the theme
RUN git submodule update --init themes/${HUGO_THEME}

# Generate the static files for the site
RUN /usr/bin/hugo -D

# Stage 2
# Multi stage build to ensure smallest container size
FROM nginx:stable-alpine-slim
COPY --from=build /blog/public/ /usr/share/nginx/html
COPY --from=build /blog/themes/${HUGO_THEME} /usr/share/nginx/html/themes/${HUGO_THEME}
RUN  chmod -R 745 /usr/share/nginx/html
EXPOSE 80/tcp
