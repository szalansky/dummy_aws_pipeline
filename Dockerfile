FROM ruby:2.2.2

MAINTAINER Rafal Szalanski & Tetiana Dushenkivska <rafal.szalanski+tanechka289@gmail.com>
EXPOSE 3000

RUN mkdir /app
WORKDIR /app

ADD . /app

RUN bundle install && chmod +x /app/script/docker_start
CMD ["/app/script/docker_start"]
