# Nmap

## Installation

### OS X

```sh
brew install nmap
```

### Ubuntu

```sh
sudo apt-get install -y nmap
```

## Port

### Specific Port

```sh
nmap -p [port] [ip]
```

```sh
nmap -p 22 192.168.1.0/24
nmap -p 22 192.168.1.1-200
```

### Operating System

```sh
sudo nmap -O [ip]
```

### Host Status

```sh
nmap -PN [ip]
```

### Scan

```sh
nmap -sP [ip]
```

```sh
nmap -sT [ip]
```

```sh
nmap -sU [ip]
```

### Without Reverse DNS Lookup

```sh
nmap -n [ip]
```
