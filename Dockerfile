FROM docker.io/project31/aarch64-alpine-qemu:3.5
RUN [ “cross-build-start” ]

RUN useradd -u 20001 postgres_exporter

USER postgres_exporter

ARG binary

COPY $binary /postgres_exporter

EXPOSE 9187

ENTRYPOINT [ "/postgres_exporter" ]

RUN [ “cross-build-end” ]
