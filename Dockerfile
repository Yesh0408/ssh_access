FROM ubuntu:20.04
RUN apt-get update && apt-get install -y openssh-server mysql-client rsync
RUN mkdir /var/run/sshd
EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]

