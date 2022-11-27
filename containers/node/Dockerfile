FROM node:latest
SHELL ["/bin/bash", "--login", "-c"]
COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
WORKDIR /home/node/app
RUN npm -g config set user root
