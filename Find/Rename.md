# Rename

## Find Replace

### Multiple Files

```sh
find . -iname "*.txt" -exec bash -c 'mv "$0" "${0%\.txt}.md"' {} \;
```

### Remove underscore from start of name file

```sh
find . -type f -name "_*" -exec sh -c 'd=$(dirname "$1"); mv "$1" "$d/$(basename "$1" | tr -d _)"' sh {} \;
```

### Add underscore at start of name file

```sh
find . -type f -name "*" -exec sh -c 'd=$(dirname "$1"); mv "$1" "$d/_$(basename "$1")"' sh {} \;
```
