```go
// Accept: text/html, text/*, application/json, */*; q=0

app.Get("/", func(c *fiber.Ctx) error {
  c.Accepts("text/plain", "application/json") // "application/json", due to specificity
  c.Accepts("application/json", "text/html") // "text/html", due to first match
  c.Accepts("image/png")        // "", due to */* without q factor 0 is Not Acceptable
  // ...
})
```
