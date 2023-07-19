```go
// GET https://example.com/page#chapter-1

app.Get("/", func(c *fiber.Ctx) error {
  c.BaseURL() // https://example.com
  // ...
})
```
