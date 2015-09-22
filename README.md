# AC_openssl
AC em openssl para módulo de criptografia aplicada

A versão do openssl utilizada foi - OpenSSL 1.0.1f 6 Jan 2014

O modelo de PKI utilizado aqui consiste em:

- AC Raiz -> Emite certificados para outras AC ( 1º nível / AC Emissora ).
- AC Emissora -> Emite certificados para usuário final, no caso, certificados para servidor web.
- Geração de LCR para AC Emissora com campo AIA definido.

Para iniciar a uitlização, salve os seguintes arquivos:

- ac-emissora.conf  
- ac-raiz.conf  
- server.conf
- gerar_lcr_ac-emissora.sh  

A partir do diretório em que os arquivos foram salvos, execute:

##### Arquivos para AC Raiz
```
mkdir -p ca/ac-raiz/privado ca/ac-raiz/db crl certs
cp /dev/null ca/ac-raiz/db/ac-raiz.db
cp /dev/null ca/ac-raiz/db/ac-raiz.db.attr
echo 01 > ca/ac-raiz/db/ac-raiz.crt.srl 
echo 01 > ca/ac-raiz/db/ac-raiz.crl.srl
```

##### Arquivos para AC Emissora
```
mkdir -p ca/ac-emissora/privado ca/ac-emissora/db crl certs
cp /dev/null ca/ac-emissora/db/ac-emissora.db
cp /dev/null ca/ac-emissora/db/ac-emissora.db.attr
echo 01 > ca/ac-emissora/db/ac-emissora.crt.srl
echo 01 > ca/ac-emissora/db/ac-emissora.crl.srl
```

Referência:
- https://www.openssl.org/docs/manmaster/apps/x509.html
- https://www.openssl.org/docs/manmaster/apps/crl.html
- https://www.openssl.org/docs/manmaster/apps/ca.html
- https://www.openssl.org/docs/manmaster/apps/req.html
