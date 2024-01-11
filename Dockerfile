# Use the official Jekyll base image
FROM jekyll/jekyll:latest

# Set the working directory inside the container
WORKDIR /srv/jekyll

# Copy the Jekyll project files into the container
COPY . /srv/jekyll

# Change ownership to the jekyll user
RUN chown -R jekyll:jekyll /srv/jekyll

# Install dependencies and build the Jekyll site
RUN bundle install

# Expose port 4000
EXPOSE 4000

# Set the command to serve the Jekyll site
CMD ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0"]
