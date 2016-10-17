FROM aarch64/ubuntu

COPY ./jdk8.tgz /tmp
RUN mkdir /opt/java && tar xzvf /tmp/jdk8.tgz -C /opt/java --strip-components=1 && rm /tmp/jdk8.tgz
ENV PATH $PATH:/opt/java/bin

# Define commonly used JAVA_HOME variable
ENV JAVA_HOME /opt/java

# Define default command.
CMD ["bash"]
