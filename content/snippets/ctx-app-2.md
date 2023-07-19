```go
app.Get("/stack", func(c *fiber.Ctx) error {
  return c.JSON(c.App().Stack())
})
```
