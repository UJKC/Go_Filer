package main

import (
    "net"
    "testing"
    "time"
)

// TestPort6969Unreachable checks if port 6969 on localhost is unreachable
func TestPort6969Unreachable(t *testing.T) {
    address := "localhost:6969"
    timeout := 2 * time.Second

    // Try to connect to the port
    conn, err := net.DialTimeout("tcp", address, timeout)
    if err != nil {
        // Expected behavior: port should be unreachable
        t.Logf("Port %s is unreachable as expected: %v", address, err)
    } else {
        // If connection is successful, the test should fail
        conn.Close()
        t.Fatalf("Port %s is reachable, but it should not be.", address)
    }
}