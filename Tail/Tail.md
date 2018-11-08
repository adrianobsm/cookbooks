# Tail

## Set Output Lines

```sh
tail -n 100 [filename]
```

## Run Forever

```sh
tail -f [filename]
```

## Time Range

```sh
tail -f [filename] & sleep 60; kill $!
```

## Output to File

```sh
tail -f [filename] | egrep --line-buffered 'WARN|ERROR' | tee [filename]
```
