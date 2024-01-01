FROM openjdk:17-oracle

WORKDIR /files
COPY ./installer.jar /files/installer.jar
COPY ./*.sh /files

RUN chmod +x *.sh *.jar; \
    ./setup.sh; \
    rm -f /files/installer.jar

# Default minecraft port
EXPOSE 25565

# /data/libraries, /data/mods, /data/defaultconfigs, /data/configs, /data/logs
VOLUME /data

WORKDIR /data

# Arguments set via developer/maintainer for servers our group runs
COPY ./user_jvm_args.txt ./user_jvm_args.txt

# Initiate setup process
RUN chmod +x run.sh

ENTRYPOINT /data/run.sh