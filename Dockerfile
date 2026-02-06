# Use Ubuntu as the base image
FROM ubuntu:latest

# Set working directory
WORKDIR /app

# Install GCC compiler
RUN apt-get update && \
    apt-get install -y gcc && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Copy the C source file to the container
COPY Hello.c .

# Compile the C program
RUN gcc Hello.c -o Hello

# Run the program when container starts
CMD ["./Hello"]
