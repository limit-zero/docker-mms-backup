FROM centos:7

WORKDIR /agent
RUN curl -sL https://cloud.mongodb.com/download/agent/backup/mongodb-mms-backup-agent-latest.rhel7_x86_64.tar.gz | tar xz -C /agent --strip 1
COPY entrypoint.sh /agent

CMD [ "/agent/entrypoint.sh" ]
