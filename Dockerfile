FROM meteorhacks/meteord:base

MAINTAINER Noam Okman <noamokman@gmail.com>

RUN git clone https://github.com/evanbrumley/spyfall.git /repo
RUN cp -R /repo/spyfall /app
RUN chmod 777 -R $METEORD_DIR
RUN $METEORD_DIR/lib/install_meteor.sh
RUN $METEORD_DIR/lib/build_app.sh