# Use an Ubuntu base image
FROM ubuntu:20.04

# Install dependencies
RUN apt update && apt install -y git curl sudo

# Create a non-root user
RUN useradd -ms /bin/bash user
RUN echo 'user ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
USER user
WORKDIR /home/user

# Clone the dotfiles repository
RUN git clone https://github.com/yourusername/dotfiles.git

# Run the install and setup scripts
RUN cd dotfiles && ./install.sh && ./setup.sh

# Set the entrypoint to bash for testing
ENTRYPOINT ["/bin/bash"]
