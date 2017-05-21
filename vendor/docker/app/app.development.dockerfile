FROM ruby:2.4.1

ARG APP_PATH

ENV BUNDLE_PATH=$APP_PATH/vendor/bundle

WORKDIR $APP_PATH

CMD ["/bin/bash"]
