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