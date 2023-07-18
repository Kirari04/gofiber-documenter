```go
// Respond with "Hello, World!" on root path, "/"
app.Get("/", func(c *fiber.Ctx) error {
    return c.SendString("Hello, World!")
})
```
