```go
app.Get("/api/posts", func (c *fiber.Ctx) error {
    posts := getPosts() // your logic
    if len(posts) == 0 {
        return c.Status(404).JSON(&fiber.Map{
            "success": false,
            "error":   "There are no posts!",
        })
    }
    return c.JSON(&fiber.Map{
        "success": true,
        "posts":   posts,
    })
})
```
