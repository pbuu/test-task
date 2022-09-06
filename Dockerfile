FROM centos:7

ADD ./rpms/test-task-0-1.el7.noarch.rpm /tmp/
RUN yum localinstall -y /tmp/test-task-0-1.el7.noarch.rpm

ENTRYPOINT ["/opt/test-task/./test-task"]
