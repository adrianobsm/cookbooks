# Kerberos

```sh
kafkacat -b [hostname]:9092 -L \
 -X security.protocol=SASL_PLAINTEXT \
 -X sasl.kerberos.service.name=kafka \
 -X sasl.kerberos.keytab=/etc/security/keytabs/krb5.keytab \
 -X sasl.kerberos.principal=admin@EXAMPLE.COM
```
