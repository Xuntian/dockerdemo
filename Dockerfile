FROM xuntian/npl-runtime:20171103
MAINTAINER xuntian "li.zq@foxmail.com"

ADD ./ /opt/dockerdemo
WORKDIR /opt/dockerdemo
RUN chmod +x ./startup.sh
CMD ["./startup.sh"]