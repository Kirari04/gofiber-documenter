```go
// GET http://localhost:8080/hello%20world

app.Get("/:value", func(c *fiber.Ctx) error {
    return c.SendString("value: " + c.Params("value"))
    // => Get request with value: hello world
})
```
