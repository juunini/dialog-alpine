FROM alpine:3.15.0

EXPOSE 4443
ENTRYPOINT \
  apk add npm bash python3 make g++ linux-headers &&\
  npm i -g n &&\
  n v16.14.0 &&\
  npm i -g npm yarn &&\
  git clone https://github.com/mozilla/dialog.git /home/dialog &&\
  cd /home/dialog &&\
  npm ci &&\
  /bin/sh

EXPOSE 4443
CMD ["/bin/sh"]
