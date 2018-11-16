# Linux Version

## CentOS

### From RPM Package

```sh
rpm -ql centos-release | grep release$
```

### Directly From Files

```sh
cat /etc/redhat-release
cat /etc/centos-release
cat /etc/SuSE-release
cat /etc/os-release
cat /etc/system-release
```

```sh
rpm -qf /etc/redhat-release
```
