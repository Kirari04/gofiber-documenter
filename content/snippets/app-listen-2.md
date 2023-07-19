```go
// Listen on port :8080
// external requests can be accepted
app.Listen(":8080")

// Listen on port :80
// external requests can be accepted
// requires administrator rights because port 80 is in the reserved 1024 list
app.Listen(":80")

// Custom host
// only local requestss are accepted
// doesn't require administrator rights on windows
app.Listen("127.0.0.1:8080")
```
