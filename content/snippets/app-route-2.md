```go
func main() {
    app := fiber.New()

    app.Route("/api", func(api fiber.Router) {
        api.Get("/foo", handler).Name("foo") // /api/foo (name: api.foo)
        api.Get("/bar", handler).Name("bar") // /api/bar (name: api.bar)
    }, "api.")

    log.Fatal(app.Listen(":3000"))
}
```
