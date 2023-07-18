```go
app.Get("/", func (c *fiber.Ctx) error {
    return c.SendString("GET request")
})

app.Get("/:param", func (c *fiber.Ctx) error {
    return c.SendString("param: " + c.Params("param"))
})

app.Post("/", func (c *fiber.Ctx) error {
    return c.SendString("POST request")
})
```