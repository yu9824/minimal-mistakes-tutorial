# Dockerfile
# Github actionsと揃えて3.1にした。
FROM ruby:3.1.4

# Create a non-root user named 'reichen'
RUN useradd -m -d /home/reichen -s /bin/bash reichen

# Set the working directory to /srv/jekyll/
WORKDIR /srv/jekyll/

# Bundle install as 'reichen' user
RUN chown -R reichen:reichen /srv/jekyll
COPY --chown=reichen:reichen Gemfile /srv/jekyll/
USER reichen

RUN bundle install
# https://stackoverflow.com/questions/69890412/bundler-failed-to-load-command-jekyll
RUN bundle add webrick

# Expose Jekyll default port
EXPOSE 4000

# copy entrypoint.sh and make it executable
COPY --chown=reichen:reichen ./docker/entrypoint.sh /srv/jekyll/
RUN chmod 744 /srv/jekyll/entrypoint.sh

# Set the default command to run Jekyll
# CMD ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0"]
CMD ["/srv/jekyll/entrypoint.sh"]
# CMD ["/bin/bash"]
