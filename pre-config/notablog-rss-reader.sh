# Depois de baixar o certificado do RSS pelo navegador
# precisamos inserir esse certifado no keystore usando o
# comando abaixo

keytool -import -alias "notablog-rss" -keystore /etc/ssl/certs/java/cacerts -file /home/andreamboni/Development/certificates/notablog/_.georgerrmartin.der

# Não precisa colocar aspas para encontrar os arquivos
# 
# A senha padrão do keytool/keystore é changeit

# Precisa converter o certificado de .pem para .der
# Usa o comando abaixo

openssl x509 -outform der -in _.georgerrmartin.pem -out _.georgerrmartin.der