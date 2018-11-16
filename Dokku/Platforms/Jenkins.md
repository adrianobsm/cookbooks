# Jenkins

```sh
touch Dockerfile
```

```dockerfile
FROM ubuntu:14.04.2

RUN apt-get update && apt-get install -q -y openjdk-7-jre-headless

ADD http://mirrors.jenkins-ci.org/war/1.619/jenkins.war /opt/jenkins.war
RUN chmod 644 /opt/jenkins.war

RUN ln -s /home/jenkins/data /jenkins
ENV JENKINS_HOME /jenkins

ENTRYPOINT ["java", "-jar", "/opt/jenkins.war"]

EXPOSE 8080
```

```sh
git init
git add .
git commit -m "Initial commit"
git remote add dokku dokku@domain.com:jenkins
git push dokku master
```

```sh
dokku volume:create jenkins /home/jenkins/data
dokku volume:link jenkins jenkins
```
