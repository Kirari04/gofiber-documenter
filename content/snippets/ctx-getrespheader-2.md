```go
app.Get("/", func(c *fiber.Ctx) error {
  c.GetRespHeader("X-Request-Id")       // "8d7ad5e3-aaf3-450b-a241-2beb887efd54"
  c.GetRespHeader("Content-Type")       // "text/plain"
  c.GetRespHeader("something", "john")  // "john"
  // ..
})
```
