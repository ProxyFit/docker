FROM node:alpine

RUN adduser -D nonrootuser
USER nonrootuser

LABEL maintainer "eric.muellenbach@yncrea.fr"

ADD app.js .

ENTRYPOINT [ "node", "app.js" ]
