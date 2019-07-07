FROM java:8
MAINTAINER esaka <esaka.tom@gmail.com>

WORKDIR /opt/app/

ADD ./build/libs/jolokia-sample-app-1.0-SNAPSHOT.jar /opt/app/
ADD ./jolokia-jvm-1.6.2-agent.jar /opt/app/

CMD ["java", "-javaagent:jolokia-jvm-1.6.2-agent.jar=port=7777,host=0.0.0.0", "-jar", "jolokia-sample-app-1.0-SNAPSHOT.jar"]
