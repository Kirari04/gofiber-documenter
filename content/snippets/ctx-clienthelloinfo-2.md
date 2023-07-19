```go
// GET http://example.com/hello
app.Get("/hello", func(c *fiber.Ctx) error {
  chi := c.ClientHelloInfo()
  // ...
})
```
