package main

import (
	"fmt"
	"net/http"
)

func helloHandler(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintln(w, "Hello, World!")
}

func main() {
	http.HandleFunc("/", helloHandler)
	fmt.Println("Server is listening on port 10000...")
	err := http.ListenAndServe(":10000", nil)
	if err != nil {
		fmt.Println("Error starting server:", err)
	}
}