# Groups

## View

```sh
groups
```

### My

```sh
groups [username]
```

## Add User to Group

```sh
usermod -G [group] [username]
```

## Describe

```sh
cat /etc/passwd
```

## Show Current

```sh
id
```

## Show all users

```sh
users
```

# Remove User From Group

```sh
gpasswd -d user group
```
