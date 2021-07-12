FROM node:alpine

# Create app directory
RUN mkdir -p /var/www/app
WORKDIR /var/www/app

#ARG ANOTHER_REDIS_DESKTOP_MANAGER_WORKSPACE
#WORKDIR $ANOTHER_REDIS_DESKTOP_MANAGER_WORKSPACE
#
#RUN echo "输出工作目录+++++++++++++++" && \
#    echo $ANOTHER_REDIS_DESKTOP_MANAGER_WORKSPACE
#
#RUN ls -la $ANOTHER_REDIS_DESKTOP_MANAGER_WORKSPACE

# Install app dependencies
COPY package.json /var/www/app

# If you're in China, or you need to change sources, will be set CHANGE_SOURCE to true in .env.

ARG CHANGE_SOURCE=true
RUN if [ ${CHANGE_SOURCE} = true ]; then \
    # Change application source from dl-cdn.alpinelinux.org to aliyun source
    sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/' /etc/apk/repositories \
;fi

RUN apk update

RUN apk add \
    nodejs-dev

RUN npm config set registry https://registry.npm.taobao.org
RUN npm install -g cnpm
RUN cnpm install

# Bundle app source
#COPY laravel-echo-server.json /usr/src/app/laravel-echo-server.json

EXPOSE 9988
CMD [ "npm", "start", "--force" ]
