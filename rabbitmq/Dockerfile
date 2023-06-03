FROM rabbitmq:latest

EXPOSE 5672 15672

RUN rabbitmq-plugins enable --offline rabbitmq_management

ENV RABBITMQ_DEFAULT_USER=admin
ENV RABBITMQ_DEFAULT_PASS=password