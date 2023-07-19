```go
func main() {
    app := fiber.New()
    micro := fiber.New()
    app.Mount("/john", micro) // GET /john/doe -> 200 OK

    micro.Get("/doe", func(c *fiber.Ctx) error {
        return c.SendStatus(fiber.StatusOK)
    })

    log.Fatal(app.Listen(":3000"))
}
```
