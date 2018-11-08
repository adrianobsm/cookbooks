# Proxy Redirect

```
server {
	listen 80;

	server_name bower.domain.net;

	location / {
		proxy_set_header Host $host;
		proxy_set_header X-Real_IP $remote_addr;
		proxy_cache off;
		proxy_pass http://localhost:5678;
	}
}
```
