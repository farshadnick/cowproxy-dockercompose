FROM alpine
RUN apk update && apk add curl && apk add bash
#installing Cow Proxy
RUN curl -s -L git.io/cow | bash 

EXPOSE 7777/tcp

ENTRYPOINT ["/cow"]

