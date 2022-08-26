FROM nginx:alpine AS build
COPY . /blog
WORKDIR /blog

# Set up Hugo
ARG HUGO_VERSION=0.101.0
ENV HUGO_BINARY hugo_${HUGO_VERSION}_Linux-64bit.tar.gz
RUN set -x && \
    apk add --update wget ca-certificates && \
    wget https://github.com/spf13/hugo/releases/download/v${HUGO_VERSION}/${HUGO_BINARY} && \
    tar xzf ${HUGO_BINARY} && \
    mv hugo /usr/bin

# Next 2 lines are form single stage build, want to do article about this size
RUN /usr/bin/hugo && ls -l
RUN cp -fR /blog/public/* /usr/share/nginx/html
# Generate the static files for the site
RUN /usr/bin/hugo -D

# Multi stage build to ensure smallest container size
FROM nginx:alpine
COPY --from=build /blog/public/ /usr/share/nginx/html
EXPOSE 8080/tcp
