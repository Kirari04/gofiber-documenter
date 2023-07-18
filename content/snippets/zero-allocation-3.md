```go
app.Get("/:foo", func(c *fiber.Ctx) error {
    // Variable is now immutable
    result := utils.CopyString(c.Params("foo"))

    // ...
})
```
