IMAGE_NAME := rustlings-dev-env
CONTAINER_NAME := rustlings-container

# Build the Docker image
build:
	docker build -t $(IMAGE_NAME) .

# Run the Docker container with Neovim and start Bash
run:
	docker run --rm -v ./local:/root/.local -v ./nvim:/root/.config/nvim -v ./rustlings:/workspace/rustlings -it $(IMAGE_NAME)
