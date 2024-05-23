package main

import (
	"net"
	"testing"
	"time"
)

// TestPortReachable checks if port 10000 on localhost is reachable
func TestPortReachable(t *testing.T) {
	address := "localhost:10000"
	timeout := 2 * time.Second

	// Try to connect to the port
	conn, err := net.DialTimeout("tcp", address, timeout)
	if err != nil {
		t.Fatalf("Port %s is not reachable: %v", address, err)
	}
	conn.Close()
}
