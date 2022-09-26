FROM ruby:3.0

# throw errors if Gemfile has been modified since Gemfile.lock
RUN bundle config --global frozen 1

WORKDIR /usr/src/app

COPY Gemfile Gemfile.lock ./

RUN bundle lock --add-platform x86_64-linux

RUN bundle install

WORKDIR /ruby/src

# COPY . .

# CMD ["./your-daemon-or-script.rb"]
