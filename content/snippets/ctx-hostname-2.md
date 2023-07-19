```go
// GET http://google.com/search

app.Get("/", func(c *fiber.Ctx) error {
  c.Hostname() // "google.com"

  // ...
})
```
