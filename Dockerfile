FROM python:3.6

MAINTAINER Andrea F. Daniele <afdaniele@ttic.edu>

RUN pip3 install --no-cache-dir tensorflow

VOLUME /tflog

EXPOSE 80

CMD ["python3", "-m", "tensorflow.tensorboard", "--logdir=/tflog"]
