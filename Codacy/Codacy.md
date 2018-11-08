# Codacy

## Configuration

```sh
touch .codacy.yml
```

```yml
---
engines:
 duplication:
   enabled: true
   exclude_paths:
     - config/engines.yml
 metrics:
   enabled: true
   exclude_paths:
     - config/engines.yml
 coverage:
   enabled: true
   exclude_paths:
     - config/engines.yml
languages:
  css:
    extensions:
      - '-css.resource'
exclude_paths:
  - assets/**
  - Vagrantfile
  - Dockerfile
```
