# Sed

## Replace

```sh
sed -i 's/[pattern]/[text]/' [/path/to/file]
```

## Append

```sh
sed -i '/[pattern]/a [text]' [/path/to/file]
```

## Prepend

```sh
sed -i '/[pattern]/i [text]' [/path/to/file]
```
