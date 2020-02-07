FROM ruby:2.6.3
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
RUN gem install bundler -v 2.0.1
RUN mkdir /athena
WORKDIR /athena
COPY Gemfile /athena/Gemfile
COPY Gemfile.lock /athena/Gemfile.lock
RUN bundle install
COPY . /athena
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 8000
CMD ["rails", "server","-p", "8080", "-b", "0.0.0.0"]
