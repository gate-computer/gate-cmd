# Gate service collection

This repository contains wrappers for some programs implemented in the primary
[Gate](https://github.com/gate-computer/gate) repository, enabling additional
services.  Programs which don't incorporate services can be built directly from
the primary Gate module.  Go 1.16 and Linux are required.

Build instructions:

	go install gate.computer/gate/cmd/gate@latest
	go install gate.computer/gate/cmd/gate-runtime@latest
	go install gate.computer/services/cmd/gate-daemon@latest
	go install gate.computer/services/cmd/gate-server@latest

See the [extension document](https://github.com/gate-computer/gate/blob/master/Extension.md)
for information about customizing builds.

