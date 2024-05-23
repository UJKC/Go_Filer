- # About
	- Go Filer is a simple, self-hosted file server implemented in Go. It allows users to upload, download, and manage files via a basic web interface. This project is designed to provide an easy-to-use, lightweight solution for file hosting and retrieval, similar to S3 buckets but with a straightforward implementation.
	- ##
	- ## System Design Principles
		- ### Monolithic Architecture
			- Monitoring and Observability: Planned for future versions to ensure the health and performance of the application.
			- Message Queues: Used for effective management of file storage and retrieval.
			- No Caching: Ensures simplicity; future versions will include caching for better performance.
			- No Load Balancers or Web Servers: Simplifies the initial version; users can add these if needed.
			- Self-Hosted: Can be deployed on a user's own server or on a provided cloud service in future versions.
		-
		- ### Authentication System
			- No Permissions Management: Users handle their own file permissions and structure.
			- User Login: Secure login for users to manage file uploads and deletions.
	-
	- ## Use Case
		- ### Problem Addressed
		  Modern applications often need to dynamically load and share resources like images, files, and assets. Traditional methods of embedding these resources directly into the application can lead to various issues:  
			- File Path Errors: Renaming or moving files can cause path errors, breaking the application.
			- Extra Storage and Deployment Time: Embedding files increases storage requirements and deployment times.
			- Compilation Overhead: Local projects become cumbersome with large embedded assets.
		-
		- ### Solution
		  Go Filer provides a lightweight, URL-based solution for file management, addressing these issues:  
		- Dynamic Loading: Files are accessed directly via URLs, reducing deployment and storage overhead.
		- Ease of Management: Users manage their files independently, ensuring that paths and names are correctly handled.
		- Simple Setup: The monolithic design and lack of complex dependencies make it easy to set up and use.
- # Version
	- V1
- # Features
	- Basic Go HTTP Server: Serves files over HTTP.
	- File Upload and Download: Allows users to upload and download files through a web interface.
	- Authentication System: Users must log in to upload or remove files.
	- Simple URL-Based Access: Files can be accessed directly via URLs.
	- No File Structure or Permissions: Users manage their own file organization and permissions.
	- Monolithic Architecture: Self-contained application without external dependencies for load balancing or caching in version 1.
	- No Streaming Support: Basic file handling without streaming capabilities, planned for future versions.
	- Makefile for Build and Test Automation: Simplifies building, testing, and running the application.
- # Setup
	- ### Clone the repository
		-
		  ```shell
		  git clone https://github.com/yourusername/Go_Filer.git
		  cd Go_Filer
		  go mod init Go_Filer
		  ```
	- ### Directory structure
		-
		  ```textile
		  Go_Filer/
		  ├── main.go
		  ├── go.mod
		  ├── Makefile
		  └── test/
		      ├── subfolder1/
		      │   ├── test1.go
		      │   ├── test2.go
		      ├── subfolder2/
		      │   ├── test3.go
		      │   ├── test4.go
		      └── ... (more subfolders and test files)
		  
		  ```
	- ### Build and run
		- Build the application
			-
			  ```shell
			  make build
			  ```
		- Run the application
			-
			  ```shell
			  make run
			  ```
	- ### Testing
		- ### Testing on windows
			-
			  ```shell
			  make test_wi
			  ```
		- ### Testing on Linux
			-
			  ```shell
			  make test_li
			  ```
- # Deployment
	- Local Setup
