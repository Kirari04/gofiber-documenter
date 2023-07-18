```go
// GET http://localhost:3000/john

app.Get("/:name?", func(c *fiber.Ctx) error {
    if c.Params("name") != "" {
        return c.SendString("Hello " + c.Params("name"))
        // => Hello john
    }
    return c.SendString("Where is john?")
})
```
