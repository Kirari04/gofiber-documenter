```go
// X-Forwarded-For: proxy1, 127.0.0.1, proxy3

app.Get("/", func(c *fiber.Ctx) error {
  c.IPs() // ["proxy1", "127.0.0.1", "proxy3"]

  // ...
})
```
