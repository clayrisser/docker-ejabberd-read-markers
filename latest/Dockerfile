FROM ejabberd/ecs:20.04

USER root

COPY entrypoint.sh /usr/local/sbin/entrypoint
COPY install_modules.sh /home/ejabberd/scripts/install_modules.sh

RUN chmod +x /usr/local/sbin/entrypoint

RUN mkdir -p /home/ejabberd/ejabberd-modules && \
  cd /home/ejabberd/ejabberd-modules && \
  wget https://github.com/hausgold/ejabberd-read-markers/releases/download/0.15.0/ejabberd-read-markers-0.15.0.tar.gz && \
  mkdir mod_read_markers && cd mod_read_markers && \
  tar -xzvf ../ejabberd-read-markers-0.15.0.tar.gz && \
  cd .. && rm -rf ejabberd-read-markers-0.15.0.tar.gz

ENTRYPOINT ["/bin/sh", "/usr/local/sbin/entrypoint"]
CMD ["foreground"]
