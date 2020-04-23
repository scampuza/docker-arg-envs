FROM ubuntu:20.04

MAINTAINER scampuza@gmail.com

# ARGS are vars available during Image Build Time
ARG environment=local
ARG add_on_tool=vim

# ENVIRONMENT Are available during both image build time and container runtime
ENV VERSION=1.2

# ENV Vars can be set to ARG values
ENV ENVIRONMENT=${environment}

COPY script.sh .
COPY config/${environment}.properties .

RUN echo "This Docker Image is being built with the ARG = ${environment}"

RUN apt-get update -y && apt-get install -y ${add_on_tool}

CMD ["/bin/bash" , "script.sh"]