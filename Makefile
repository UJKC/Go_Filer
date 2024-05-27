# Variables
APP_NAME = Go_Filer

SRC_DIR = .
OUTPUT_DIR = output
BUILD_PATH = $(OUTPUT_DIR)/$(APP_NAME)
TEST_RESULTS = $(OUTPUT_DIR)/test_results.txt
TEST_DIR = ./test

# Default target
all: build

# Create output directory if it doesn't exist
$(OUTPUT_DIR):
	@mkdir -p $(OUTPUT_DIR)

# Build the application
build: $(OUTPUT_DIR)
	@echo "Building the application..."
	@go build -o $(BUILD_PATH) $(SRC_DIR)
	@echo "Build complete! Executable is at $(BUILD_PATH)"

# Run tests
test_li: $(OUTPUT_DIR)
	@echo "Running tests..."
	@go test $(TEST_DIR)/... -v | tee $(TEST_RESULTS)
	@echo "Tests complete! Results are in $(TEST_RESULTS)"

# Windows tests
test_wi: $(OUTPUT_DIR)
	@echo "Running tests..."
	@powershell -Command "go test $(TEST_DIR)/... -v | Tee-Object -FilePath $(TEST_RESULTS)"
	@echo "Tests complete! Results are in $(TEST_RESULTS)"

# Clean build artifacts
clean:
	@echo "Cleaning up..."
	@rm -rf $(OUTPUT_DIR)
	@echo "Cleanup complete!"

# Run the application
run: build
	@echo "Running the application..."
	@./$(BUILD_PATH)

# Run decoy server
decoy:
	@echo "Running decoy server"
	@python decoy.py

# Build the application for Linux
build_linux: $(OUTPUT_DIR)
	@echo "Building the application for Linux..."
	@GOOS=linux GOARCH=amd64 go build -o $(BUILD_PATH)_linux $(SRC_DIR)
	@echo "Build complete! Executable is at $(BUILD_PATH)_linux"

# Phony targets (not associated with files)
.PHONY: all build test clean run
