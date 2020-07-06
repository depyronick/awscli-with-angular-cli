FROM node:14

RUN apt-get update && \
	apt-get install -y python python-pip python-dev

ENV ANGULAR_CLI_VERSION=9.0.0-rc.4
RUN npm install -g \
	@angular/cli@next

ENV AWSCLI_VERSION=1.15.4
RUN pip install awscli==${AWSCLI_VERSION}
