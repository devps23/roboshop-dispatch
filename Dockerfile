FROM                  golang
RUN                   mkdir /app
WORKDIR               /app
COPY                  ./ /app/
RUN                   go mod init dispatch && go get && go build
COPY                  run.sh /
ENTRYPOINT            ["bash","/run.sh"]
