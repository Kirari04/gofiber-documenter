```go
&tls.Config{
    MinVersion: tls.VersionTLS12,
    ClientAuth: tls.RequireAndVerifyClientCert,
    ClientCAs:  clientCertPool,
    Certificates: []tls.Certificate{
        cert,
    },
}
```
