package main

import (
	"fmt"
	"net"
	"net/http"
	"time"
)

// helloHandler handles the HTTP requests
func helloHandler(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintln(w, "Hello, World!")
}

// isPortOpen checks if the specified port is open
func isPortOpen(port string) bool {
	conn, err := net.DialTimeout("tcp", port, 2*time.Second)
	if err != nil {
		return false
	}
	conn.Close()
	return true
}

func main() {
	portToCheck := "localhost:6969"

	// Check if port 6969 is reachable
	if isPortOpen(portToCheck) {
		fmt.Printf("Port %s is reachable. Application will not run.\n", portToCheck)
		return
	}

	// Start the server on port 10000
	http.HandleFunc("/", helloHandler)
	fmt.Println("Server is listening on port 10000...")
	err := http.ListenAndServe(":10000", nil)
	if err != nil {
		fmt.Println("Error starting server:", err)
	}
}
