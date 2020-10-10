FROM fussy113/rails-docker:2.7.2-12.19.0

WORKDIR /home/docker/app

SHELL ["/bin/bash", "-l", "-c"]

COPY --chown=docker:wheel ./ ./

RUN bundle install -j4

EXPOSE 3000

CMD rails server -b 0.0.0.0 -p 3000
