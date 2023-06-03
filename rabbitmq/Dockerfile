FROM rabbitmq:latest

EXPOSE 5672 15672

RUN rabbitmq-plugins enable --offline rabbitmq_management

ENV RABBITMQ_DEFAULT_USER=guest
ENV RABBITMQ_DEFAULT_PASS=guest