FROM amazon/aws-cli:latest

RUN yum update -y \
  && yum install -y wget tar gzip \
  && yum clean all

ENV HUGO_VERSION=0.81.0
ENV HUGO_TYPE=_extended

ENV HUGO_ID=hugo${HUGO_TYPE}_${HUGO_VERSION}

RUN wget -O /tmp/hugo.tar.gz https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/${HUGO_ID}_Linux-64bit.tar.gz \
    && tar -xzvf /tmp/hugo.tar.gz -C /tmp \
    && mv /tmp/hugo /usr/local/bin/hugo \
    && rm -rf /tmp/*

VOLUME /data

WORKDIR /data

ENTRYPOINT ["/usr/bin/env"]
CMD ["hugo"]
