- ### Go Filer Version 1: Test Documentation
  
---
- ## Introduction
  
  This document provides details on the test cases implemented for the Go Filer Version 1 project. The tests ensure that the server behaves as expected, particularly regarding network connectivity and port availability.  
- ## Test Cases
- ### 1. Test Case: Check if Port 10000 is Reachable
  
  Objective: Verify that the Go Filer server is listening on port 10000 and that the port is reachable.  
  
  Test File: `main_test.go`  
  
  Test Function: `TestPortReachable`  
  
  Description: This test checks whether the Go Filer server is running and accepting connections on port 10000. A successful connection indicates that the server is correctly set up and listening for requests.  
  
  Steps:  
	1. Attempt to establish a TCP connection to `localhost:10000`.
	2. Use a 2-second timeout for the connection attempt.
	3. If the connection is successful, close it and pass the test.
	4. If the connection fails, the test fails.

- ### Go Filer Version 1: Test Documentation
  
---
- ## Introduction
  
  This document provides details on the test cases implemented for the Go Filer Version 1 project. The tests ensure that the server behaves as expected, particularly regarding network connectivity and port availability.  
- ## Test Cases
- ### 1. Test Case: Check if Port 10000 is Reachable
  
  Objective: Verify that the Go Filer server is listening on port 10000 and that the port is reachable.  
  
  Test File: `main_test.go`  
  
  Test Function: `TestPortReachable`  
  
  Description: This test checks whether the Go Filer server is running and accepting connections on port 10000. A successful connection indicates that the server is correctly set up and listening for requests.  
  
  Steps:  
	1. Attempt to establish a TCP connection to `localhost:10000`.
	2. Use a 2-second timeout for the connection attempt.
	3. If the connection is successful, close it and pass the test.
	4. If the connection fails, the test fails.

- ### 2. Test Case: Check if Port 69696 is Unreachable
  
  Objective: Verify that port 69696 is not open or listening for connections on the localhost.  
  
  Test File: `port_unreachable_test.go`  
  
  Test Function: `TestPortUnreachable`  
  
  Description: This test checks that port 69696 on localhost is unreachable. This is to ensure that no other application is using this port, which should remain closed.  
  
  Steps:  
	1. Attempt to establish a TCP connection to `localhost:69696`.
	2. Use a 2-second timeout for the connection attempt.
	3. If the connection fails (which is expected), log the success and pass the test.
	4. If the connection is successful, close it and fail the test.

- ## Running the Tests
  
  To run these tests, navigate to the root directory of your Go Filer project and execute the following command in your terminal:  
  
  ```sh
  go test -v ./test/...
  ```
  
  This command will run all the test files in the `test` directory and provide verbose output of the test results.  
- ## Conclusion
  
  These test cases verify the fundamental network behavior of the Go Filer server, ensuring that it correctly listens on the intended port (10000) and that no unintended ports (69696) are open. This helps validate the server setup and network configuration. Future tests can expand on this foundation to cover more functionality and edge cases.  
- ## Running the Tests
  
  To run these tests, navigate to the root directory of your Go Filer project and execute the following command in your terminal:  
  
  ```sh
  go test -v ./test/...
  ```
  
  This command will run all the test files in the `test` directory and provide verbose output of the test results.  
- ## Conclusion
  
  These test cases verify the fundamental network behavior of the Go Filer server, ensuring that it correctly listens on the intended port (10000) and that no unintended ports (69696) are open. This helps validate the server setup and network configuration. Future tests can expand on this foundation to cover more functionality and edge cases.
