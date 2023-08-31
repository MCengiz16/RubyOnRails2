# Use a Ruby image that matches the platform Heroku uses
FROM ruby:3.2.2

# Set the working directory
WORKDIR /app

# Install Node.js and npm
RUN curl -fsSL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -y nodejs

# Install dependencies
COPY Gemfile Gemfile.lock ./
RUN bundle install

# Copy your application code
COPY . .

# Start the Rails server
CMD ["rails", "server", "-b", "0.0.0.0"]