# Sendmail

```sh
sudo apt-get install sendmail mailutils sendmail-bin 
```

```sh
sudo vim /etc/mail/sendmail.mc
```

```sh
make -C /etc/mail
sudo service sendmail restart
```

```sh
echo "Just testing my sendmail relay" | mail -s "Sendmail Relay" username@domain.com
```
