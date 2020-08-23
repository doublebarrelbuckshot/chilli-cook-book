FROM debian:10

LABEL version="1.1.0"

ENV DEBIAN_FRONTEND noninteractive

# Install all TeX and LaTeX dependences
RUN apt-get update && \
  apt-get install --yes --no-install-recommends \
  lmodern \
  make \
  texlive-fonts-recommended \
  texlive-generic-recommended \
  texlive-lang-english \
  texlive-xetex && \
  apt-get autoclean && apt-get --purge --yes autoremove && \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Export the output data

# ARG http_proxy="${http_proxy:-}"
# # "http://proxy.ubisoft.org:3128"
# ARG https_proxy="${https_proxy:-}"
# "http://proxy.ubisoft.org:3128"
# RUN apt-get update && apt-get install -y texlive-xetex && \
#   curl https://github.com/lise-henry/crowbook/releases/download/v0.15.2/crowbook_0.15.2_amd64.tar.gz --output crowbook.tar.gz && \
#   tar -xf crowbook.tar.gz -C /usr/bin

RUN apt-get update && apt-get install curl -y 

# unrar-free -y && \
RUN curl -LJ https://github.com/lise-henry/crowbook/releases/download/v0.15.2/crowbook_0.15.2_amd64.tar.gz --output /usr/local/crowbook.tar.gz
RUN tar xvf /usr/local/crowbook.tar.gz -C /usr/local/bin

WORKDIR /book
VOLUME ["/book"]


# RUN tar xvf crowbook.tar.gz -C /usr/bin