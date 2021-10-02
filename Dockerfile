FROM  python:3-alpine
LABEL Name=you-get-ByList Version=0.0.1

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.tuna.tsinghua.edu.cn/g' /etc/apk/repositories \
    && pip3 install  --no-cache-dir you-get -i https://pypi.tuna.tsinghua.edu.cn/simple \
    && mkdir -p /download
WORKDIR /download

COPY you-get-ByList.sh /bin
RUN chmod +x /bin/you-get-ByList.sh

VOLUME [ "/download" ]

ENTRYPOINT [ "/bin/you-get-ByList.sh" ]
