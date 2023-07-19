```go
// Content-Type: text/html; charset=utf-8

app.Get("/", func(c *fiber.Ctx) error {
  c.Is("html")  // true
  c.Is(".html") // true
  c.Is("json")  // false

  // ...
})
```
