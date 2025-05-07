FROM ubuntu:20.04

# Set non-interactive mode for apt
ENV DEBIAN_FRONTEND=noninteractive

# Install required tools and packages
RUN apt update && \
    apt install

# Install Nginx
RUN apt install -y nginx

# Install Node.js & npm (using NodeSource or Ubuntu default)
RUN apt install -y nodejs npm

# Set working directory
WORKDIR /Module-3-deployment

# Copy your app
COPY . .


# Expose ports (optional)
EXPOSE 5000

# Start Node app by default
ENTRYPOINT ["node", "src/server.js"]