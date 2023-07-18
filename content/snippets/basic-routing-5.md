```go
// GET http://localhost:3000/api/user/john

app.Get("/api/*", func(c *fiber.Ctx) error {
    return c.SendString("API path: " + c.Params("*"))
    // => API path: user/john
})
```
