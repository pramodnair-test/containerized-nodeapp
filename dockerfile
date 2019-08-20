FROM node

#RUN apt-get update && \
#apt-get -y install apt-transport-https \
#    ca-certificates \
#    curl \
#    gnupg2 \
#    software-properties-common && \
#curl -fsSL https://download.docker.com/linux/$(. /etc/os-release; echo "$ID")/gpg > /tmp/dkey; apt-key add /tmp/dkey && \
#add-apt-repository \
#    "deb [arch=amd64] https://download.docker.com/linux/$(. /etc/os-release; echo "$ID") \
#    $(lsb_release -cs) \
#    stable" && \
#apt-get update && \
#apt-get -y install docker-ce
#RUN apt-get install -y docker-ce

RUN apt-get update && apt-get upgrade -y \
    && apt-get clean


RUN mkdir /app
WORKDIR /app

COPY package.json /app/
RUN npm install

COPY src /app/src

EXPOSE 3005

CMD [ "npm", "start" ]

