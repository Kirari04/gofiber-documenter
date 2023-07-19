```go
&tls.Config{
    MinVersion:   tls.VersionTLS12,
    Certificates: []tls.Certificate{
        cert,
    },
}
```
