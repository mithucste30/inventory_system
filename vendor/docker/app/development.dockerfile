FROM ruby:2.4.1

ARG APP_PATH

WORKDIR $APP_PATH

CMD ["/bin/bash"]
