# Clone

## Submodule

```sh
git clone --recursive [repo]
```

## Specific Branch

```sh
git clone --branch [branch] --single-branch --depth [depth] [repo]
```

| Param | Value |
| --- | --- |
| `--depth` | `1` |

## Root Permissions

```sh
cd /opt
sudo mkdir [project]
sudo chown [user]:[group] [project]
```

```sh
git clone [repo]
```
