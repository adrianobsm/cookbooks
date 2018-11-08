# Config

```sh
composer config --list
```

```sh
vim ~/.composer/config.json
```

```json
{
    "config": {
        "github-protocols": [
            "https"
        ]
    },
    "repositories": [
        {
            "packagist": false
        },
        {
            "type": "composer",
            "url": "http://packagist.org",
            "options": {
                "ssl": {
                    "verify_peer": "false"
                }
            }
        }
    ]
}
```
