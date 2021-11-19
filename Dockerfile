FROM centos:latest

RUN yum install openssh-server net-tools passwd -y && \
    ssh-keygen -A && \
    echo "password" | passwd --stdin root

ENTRYPOINT ["/usr/sbin/sshd" , "-D" ]
