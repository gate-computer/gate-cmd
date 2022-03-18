package main

import (
	m "gate.computer/gate/cmd/gate-server/main"
	_ "gate.computer/grpc"
	_ "gate.computer/localhost"
	_ "modernc.org/sqlite"
)

func main() { m.Main() }
