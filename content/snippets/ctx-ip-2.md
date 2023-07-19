```go
app.Get("/", func(c *fiber.Ctx) error {
  c.IP() // "127.0.0.1"

  // ...
})
```
