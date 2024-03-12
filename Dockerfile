FROM amazonlinux:latest

RUN yum install -y aws-cli pv

COPY clouduploader /usr/local/bin/clouduploader

RUN chmod +x /usr/local/bin/clouduploader

ENTRYPOINT [ "/usr/local/bin/clouduploader" ]



