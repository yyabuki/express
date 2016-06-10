FROM ubuntu
MAINTAINER yyabuki <yabuki.yukimitsu@imsbio.co.jp>
RUN apt-get update && apt-get -y upgrade \
    && apt-get -y install wget \
    && wget http://bio.math.berkeley.edu/eXpress/downloads/express-1.5.1/express-1.5.1-linux_x86_64.tgz \
    && tar xvfz express-1.5.1-linux_x86_64.tgz \
    && cd express-1.5.1-linux_x86_64 \
    && apt-get clean \
    && rm -r /var/lib/apt/lists/*
WORKDIR /express-1.5.1-linux_x86_64
ENTRYPOINT ["./express"]
