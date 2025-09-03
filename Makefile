.PHONY: setup dev build start clean

# Setup the project
setup:
	@echo "🚀 Setting up BLMS..."
	@chmod +x .local/scripts/setup-blms.sh
	@./.local/scripts/setup-blms.sh

# Start development server
dev:
	@echo "🔧 Starting development server..."
	@npm run dev

# Build the project
build:
	@echo "🏗️ Building project..."
	@npm run build

# Start production server
start:
	@echo "🚀 Starting production server..."
	@npm run start

# Clean node_modules and reinstall
clean:
	@echo "🧹 Cleaning and reinstalling dependencies..."
	@rm -rf node_modules package-lock.json
	@npm install
