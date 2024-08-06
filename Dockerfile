FROM debian:bookworm

# renovate: datasource=deb depName=gcc-11 versioning=loose
ENV GCC_VERSION="11.3.0-12"
# renovate: datasource=deb depName=musl-dev versioning=loose
ENV MUSL_DEV_VERSION="1.1.24-r8"

RUN apt install\
    gcc-11="${GCC_VERSION}" \
    musl-dev="${MUSL_DEV_VERSION}"
