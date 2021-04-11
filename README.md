This repository contains wrappers for the programs implemented in the primary
[Gate](https://github.com/gate-computer/gate) repository, enabling additional
services.  Go 1.16 and Linux are required.

Build instructions:

	go install gate.computer/cmd/gate@latest
	go install gate.computer/cmd/gate-daemon@latest
	go install gate.computer/cmd/gate-runtime@latest
	go install gate.computer/cmd/gate-server@latest

See the [extension document](https://github.com/gate-computer/gate/blob/master/Extension.md)
for information about customizing builds.

