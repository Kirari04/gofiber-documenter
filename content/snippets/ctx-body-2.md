```go
// curl -X POST http://localhost:8080 -d user=john

app.Post("/", func(c *fiber.Ctx) error {
  // Get raw body from POST request:
  return c.Send(c.Body()) // []byte("user=john")
})
```
