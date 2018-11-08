# Installation

## Ubuntu

```sh
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.25.4/install.sh | bash
su - $USER
nvm install stable
nvm use stable
nvm alias default stable
```

```sh
npm install -g npm_lazy
```

```sh
npm_lazy --init > ~/npm_lazy.config.js
npm_lazy --config ~/npm_lazy.config.js
```

```sh
npm --registry http://localhost:8080 install socket.io
npm config set registry http://localhost:8080
```

```sh
touch .npmrc
```

```ini
registry = http://localhost:8080
```
