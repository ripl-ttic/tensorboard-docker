FROM python:3.6

MAINTAINER Andrea F. Daniele <afdaniele@ttic.edu>

ENV DEFAULT_TF_LOGS=/tflogs

RUN pip3 install --no-cache-dir tensorflow

COPY assets/entrypoint.sh /entrypoint.sh

EXPOSE 6006

CMD ["/entrypoint.sh"]
