FROM centos:6.6

WORKDIR ~

RUN  yum -y install tar

RUN  curl -j -k -L -H "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/7u80-b15/jre-7u80-linux-x64.rpm > jre7.rpm \
&& yum -y localinstall jre7.rpm && rm -f jre7.rpm

RUN curl -L http://archive.apache.org/dist/cassandra/2.0.7/apache-cassandra-2.0.7-bin.tar.gz > cassandra.tar.gz && tar -xf cassandra.tar.gz -C . && rm -f cassandra.tar.gz

CMD /bin/bash




