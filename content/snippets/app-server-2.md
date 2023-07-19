```go
func main() {
    app := fiber.New()

    app.Server().MaxConnsPerIP = 1

    // ...
}
```
