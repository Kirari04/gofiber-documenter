```go
// Custom config
app.Static("/", "./public", fiber.Static{
  Compress:      true,
  ByteRange:     true,
  Browse:        true,
  Index:         "john.html",
  CacheDuration: 10 * time.Second,
  MaxAge:        3600,
})
```