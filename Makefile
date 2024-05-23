# Variables
APP_NAME = Go_Filer

SRC_DIR = .
OUTPUT_DIR = output
BUILD_PATH = $(OUTPUT_DIR)/$(APP_NAME)
TEST_RESULTS = $(OUTPUT_DIR)/test_results.txt

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
test: $(OUTPUT_DIR)
	@echo "Running tests..."
	@go test ./... -v | tee $(TEST_RESULTS)
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

# Phony targets (not associated with files)
.PHONY: all build test clean run
