FROM xuntian/npl-runtime:20171103
MAINTAINER xuntian "li.zq@foxmail.com"

ADD ./ /opt/dockerdemo      # add pro to docker image
WORKDIR /opt/dockerdemo     # given work dir 
RUN chmod +x ./startup.sh   
CMD ["./startup.sh"]        # container entrypoint 