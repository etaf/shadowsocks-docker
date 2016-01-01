FROM centos
MAINTAINER etaf <fjdksfjdks@qq.com>
RUN yum install -y epel-release
RUN yum install python-pip -y && yum clean all  && pip install shadowsocks
ADD shadowsocks_config.json  /shadowsocks_config.json
CMD ["ssserver", "-c", "/shadowsocks_config.json"]
