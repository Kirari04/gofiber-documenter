```go
app.Use(func(c *fiber.Ctx) error {
  c.Bind(fiber.Map{
    "Title": "Hello, World!",
  })
})

app.Get("/", func(c *fiber.Ctx) error {
  return c.Render("xxx.tmpl", fiber.Map{}) // Render will use Title variable
})
```
