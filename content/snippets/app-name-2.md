```go
var handler = func(c *fiber.Ctx) error { return nil }

func main() {
    app := fiber.New()

    app.Get("/", handler)
    app.Name("index")

    app.Get("/doe", handler).Name("home")

    app.Trace("/tracer", handler).Name("tracert")

    app.Delete("/delete", handler).Name("delete")

    a := app.Group("/a")
    a.Name("fd.")

    a.Get("/test", handler).Name("test")

    data, _ := json.MarshalIndent(app.Stack(), "", "  ")
    fmt.Print(string(data))

    app.Listen(":3000")

}
```
