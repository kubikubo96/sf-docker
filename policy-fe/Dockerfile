FROM node:16.19.0

# replace shell with bash so we can source files
RUN rm /bin/sh && ln -s /bin/bash /bin/sh

# nvm environment variables
ENV NVM_DIR /usr/local/nvm
ENV NODE_VERSION 16.19.0

# install nvm
# https://github.com/creationix/nvm#install-script
RUN curl --silent -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.2/install.sh | bash

# install node and npm
RUN source $NVM_DIR/nvm.sh \
    && nvm install $NODE_VERSION \
    && nvm alias default $NODE_VERSION \
    && nvm use default

# add node and npm to path so the commands are available
ENV NODE_PATH $NVM_DIR/v$NODE_VERSION/lib/node_modules
ENV PATH $NVM_DIR/versions/node/v$NODE_VERSION/bin:$PATH

# Set RAM limit
ENV NODE_OPTIONS=--max_old_space_size=4096
WORKDIR /var/www/html/policy-fe

# update the repository sources list
# and install dependencies
RUN apt-get update && apt-get install -y \
    nano \
    curl \
    yarn

EXPOSE 5173

ENTRYPOINT ["/bin/bash"]