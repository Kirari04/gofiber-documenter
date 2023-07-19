```go
app.Get("/", func(c *fiber.Ctx) error {
  // If request came from localhost, return true else return false
  c.IsFromLocal()

  // ...
})
```
