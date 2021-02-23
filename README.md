# Gate service collection

This Go module contains thin wrappers for some programs implemented in the
primary [Gate](https://github.com/gate-computer/gate) repository, enabling
additional services.

Modern build instructions (requires [Go](https://golang.org) 1.16):

    go install gate.computer/services/cmd/gate-daemon@latest
    go install gate.computer/services/cmd/gate-server@latest

Legacy build instructions (requires a Go toolchain):

    go get -u gate.computer/services/cmd/gate-daemon
    go get -u gate.computer/services/cmd/gate-server

Other programs can be built directly from the primary Gate module:

    go install gate.computer/gate/cmd/gate@latest
    go install gate.computer/gate/cmd/gate-runtime@latest

See the [extension document](https://github.com/gate-computer/gate/blob/master/Extension.md)
for information about custom builds.

