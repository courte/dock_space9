FROM ruby:2

RUN apt-get update && apt-get install -y --no-install-recommends \
    less nano vim git nodejs\
    && rm -rf /var/lib/apt/lists/*

RUN /bin/bash -c "git clone https://github.com/courte/dock_space9"
WORKDIR dock_space9
RUN /bin/bash -c "bundle install"
COPY config/database.yml.sample config/database.yml
RUN /bin/bash -c "bundle exec rake db:setup"

EXPOSE 3000
CMD ["/bin/bash", "-c", "rails s"]
