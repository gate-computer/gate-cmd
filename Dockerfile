FROM golang AS build
WORKDIR /build
COPY go.mod go.sum ./
RUN go mod download
COPY gate-server ./gate-server/
RUN CGO_ENABLED=0 go build -ldflags="-X gate.computer/gate/internal/container.executable=/gate-server" -o / ./gate-server

FROM scratch
VOLUME /acme
VOLUME /image
VOLUME /inventory
EXPOSE 8080
COPY --from=build /gate-server /
ENTRYPOINT ["/gate-server", "-o", "runtime.container.namespace.container.uid=10001", "-o", "runtime.container.namespace.container.gid=10001", "-o", "runtime.container.namespace.executor.uid=10002", "-o", "runtime.container.namespace.executor.gid=10002", "-o", "image.vardir=/image", "-o", "inventory.sql.dsn=/inventory/inventory.sqlite?cache=shared", "-o", "server.uid=10000", "-o", "server.gid=10000", "-o", "acme.cachedir=/acme"]
