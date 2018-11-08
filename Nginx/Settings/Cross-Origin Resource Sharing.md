# Cross-Origin Resource Sharing

> Font from origin 'http://domain.com' has been blocked from loading by Cross-Origin Resource Sharing policy: No 'Access-Control-Allow-Origin' header is present on the requested resource. Origin 'http://domain.com' is therefore not allowed access.

```ini
server {
	location / {
		add_header Access-Control-Allow-Origin *;
	}
}
```
