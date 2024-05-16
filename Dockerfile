# Use an Ubuntu base image
FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

# Install dependencies
RUN apt update && apt install -y \
	git \
	curl \
	sudo \
	tree \
	software-properties-common

RUN add-apt-repository ppa:neovim-ppa/stable && \
	apt update && \
	apt install -y neovim

# Create a non-root user
RUN useradd -ms /bin/bash user
RUN echo 'user ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
USER user
WORKDIR /home/user

# Clone the dotfiles repository
RUN git clone https://github.com/a3nv/dotfiles.git
WORKDIR /home/user/dotfiles

# Run the install and setup scripts
RUN ./install.sh && ./setup.sh

# Set the entrypoint to bash for testing
ENTRYPOINT ["/bin/bash"]
