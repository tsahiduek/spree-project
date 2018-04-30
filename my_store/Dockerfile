FROM ruby:2.4.1


RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN apt-get install -y imagemagick
RUN apt-get update

ENV APP_HOME /app
RUN mkdir $APP_HOME
WORKDIR $APP_HOME

ADD . $APP_HOME/
RUN bundle install
# RUN rails g spree:install --user_class=Spree::User
# RUN rails g spree:auth:install
# RUN rails g spree_gateway:install
EXPOSE 3000
CMD [ "rails","server" ]
# CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]