```go
func main() {
    app := fiber.New()
    one := fiber.New()
    two := fiber.New()
    three := fiber.New()

    two.Mount("/three", three)
    one.Mount("/two", two)
    app.Mount("/one", one)

    one.MountPath()   // "/one"
    two.MountPath()   // "/one/two"
    three.MountPath() // "/one/two/three"
    app.MountPath()   // ""
}
```
