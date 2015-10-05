FROM java:7

ENV FOO bar

COPY src /javahelloworld/src
WORKDIR /javahelloworld
RUN mkdir bin
RUN javac -d bin src/HelloWorld.java
ENTRYPOINT ["java", "HelloWold"]
