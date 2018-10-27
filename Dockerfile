FROM node:slim

RUN mkdir -p /plugins

WORKDIR /gitbook

RUN npm install -g gitbook-cli
RUN gitbook -V

# plugins
RUN npm install gitbook-plugin-katex
RUN npm install gitbook-plugin-mathjax

# Calibre
RUN apt-get update && \
  apt-get install -y calibre && \
  apt-get clean && \
  rm -rf /var/cache/apt/* /var/lib/apt/lists/*

COPY ./entrypoint.sh /

VOLUME /docs

EXPOSE 4000

ENTRYPOINT [ "sh", "/entrypoint.sh" ]
CMD [ "gitbook", "--help" ]
