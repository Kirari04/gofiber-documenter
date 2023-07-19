```go
func main() {
    app := fiber.New()
    app.Post("/", func (c *fiber.Ctx) error {
        return c.SendString("Hello, World!")
    }).Name("index")
    data, _ := json.MarshalIndent(app.GetRoutes(true), "", "  ")
    fmt.Print(string(data))
}
```
