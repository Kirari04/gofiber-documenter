```go
app.Get("/", func(c *fiber.Ctx) error {
  // Create & Set cookie
	c.Cookie(&fiber.Cookie{
		Name:    "john",
		Value:   "doe",
		Expires: time.Now().Add(24 * time.Hour),
	})
  // ...
})
```
