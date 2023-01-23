# docker pull gradle:7.5.1-jdk11-alpine
FROM gradle:7.5.1-jdk11-alpine
ADD --chown=gradle . /code
WORKDIR /code
RUN gradle clean build -x test
CMD gradle bootRun
