```go
app := fiber.New()

app.Static("/", "./public") 

app.Listen(":3000")
```
