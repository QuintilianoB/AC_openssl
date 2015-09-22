#!/bin/bash
CRL_NUM=`cat ca/ac-emissora/db/ac-emissora.crl.srl`
CRL_DATA=`date +%F-%k-%M`
CRL_NOME=`echo crl/ac-emissora_$CRL_NUM"_"$CRL_DATA.crl`

openssl ca -config ac-emissora.conf -gencrl -out $CRL_NOME
