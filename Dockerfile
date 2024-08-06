FROM debian:bookworm

# renovate: datasource=deb depName=gcc-11 versioning=loose
ENV GCC_VERSION="11.3.0-12"
# renovate: datasource=deb depName=musl-dev versioning=loose
ENV MUSL_DEV_VERSION="1.2.3-1"
# renovate: datasource=deb depName=influxdb versioning=loose
ENV INFLUX_DB_VERSION="1.6.7~rc0-1+b13"

RUN apt install \
    gcc-11="${GCC_VERSION}" \
    musl-dev="${MUSL_DEV_VERSION}" \
    influxdb="${INFLUX_DB_VERSION}"
