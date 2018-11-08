# Submodules

```sh
touch .gitmodules
```

## Add

```sh
git submodule add repo_url path/to/module
```

## Remove folder/module from git repository

```sh
git rm -r --cached path/of/module
```

## Update from submodule folder

```sh
cd path/of/module
git pull
```

## Update all submodules

```sh
git submodule foreach git pull origin master
```

## Close with submodules

```sh
git clone --recursive repo_url
git submodule foreach git checkout master
```

## Get submodules from cloned repo

```sh
git submodule update --init --recursive
git submodule foreach git pull origin master
git submodule foreach git checkout master
```
