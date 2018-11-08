# Deploy

```sh
cd [project]
mvn clean install
```

```sh
sudo ln -s /home/[username]/[project]/target/[project].war /opt/tomcat/webapps/[project].war
```

```sh
sudo systemctl restart tomcat
```
