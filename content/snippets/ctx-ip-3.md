```go
app := fiber.New(fiber.Config{
  ProxyHeader: fiber.HeaderXForwardedFor,
})
```
