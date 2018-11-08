## Errors

could not build the ```server_names_hash```, you should increase ```server_names_hash_bucket_size```:

	vim /etc/nginx/nginx.conf

Set ```server_names_hash_bucket_size``` to 64

	http {
    	[...]
    	server_names_hash_bucket_size 64;
    	[...]
	}
