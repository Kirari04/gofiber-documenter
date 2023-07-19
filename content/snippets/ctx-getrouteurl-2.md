```go
app.Get("/", func(c *fiber.Ctx) error {
    return c.SendString("Home page")
}).Name("home")

app.Get("/user/:id", func(c *fiber.Ctx) error {
    return c.SendString(c.Params("id"))
}).Name("user.show")

app.Get("/test", func(c *fiber.Ctx) error {
    location, _ := c.GetRouteURL("user.show", fiber.Map{"id": 1})
    return c.SendString(location)
})

// /test returns "/user/1"
```
