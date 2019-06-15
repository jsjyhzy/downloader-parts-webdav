FROM python:3

EXPOSE 80

RUN apt-get update &&\
    apt-get install gettext-base &&\
    pip install wsgidav cheroot

COPY wsgidav.ymal.template wsgidav.ymal.template

COPY startup.sh startup.sh

ENTRYPOINT [ "bash", "startup.sh" ]