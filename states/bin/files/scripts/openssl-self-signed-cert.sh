
# Create Self Signed Cert, upload to AWS

echo openssl genrsa 2048 > privatekey.pem
echo openssl req -new -key privatekey.pem -out csr.pem
echo openssl x509 -req -days 365 -in csr.pem -signkey privatekey.pem -out public.crt
echo aws iam upload-server-certificate --server-certificate-name alb-api-test --certificate-body file://public.crt --private-key file://privatekey.pem

