```go
// GET http://example.com/user/fenny
app.Get("/user/:name", func(c *fiber.Ctx) error {
  c.AllParams() // "{"name": "fenny"}"

  // ...
})

// GET http://example.com/user/fenny/123
app.Get("/user/*", func(c *fiber.Ctx) error {
  c.AllParams()  // "{"*1": "fenny/123"}"

  // ...
})
```
