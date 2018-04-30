FROM ruby:2.4.1


RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN apt-get install -y imagemagick
RUN apt-get update

ENV MYSQL_HOSTNAME='' 
ENV MYSQL_USER='' 
ENV MYSQL_PASSWORD='' 

ENV APP_HOME /app
RUN mkdir $APP_HOME
WORKDIR $APP_HOME

ADD . $APP_HOME/
RUN bundle install
EXPOSE 3000
CMD [ "rails","server" ]