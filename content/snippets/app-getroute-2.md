```go
var handler = func(c *fiber.Ctx) error { return nil }

func main() {
    app := fiber.New()

    app.Get("/", handler).Name("index")
    
    data, _ := json.MarshalIndent(app.GetRoute("index"), "", "  ")
    fmt.Print(string(data))


    app.Listen(":3000")

}
```
