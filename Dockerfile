FROM centos:7
# 1. 安装openssh-server
# 2. 初始化 ssh
# 3. 修改远程连接密码
# 4. 启动openssh-server

RUN yum install -y openssh-server\
 && ssh-keygen -A \
 && echo root:frankie|chpasswd

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]

