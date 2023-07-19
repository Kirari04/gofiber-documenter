```go
// Create route with GET method for test:
app.Get("/", func(c *fiber.Ctx) error {
    fmt.Println(c.BaseURL())              // => http://google.com
    fmt.Println(c.Get("X-Custom-Header")) // => hi

    return c.SendString("hello, World!")
})

// http.Request
req := httptest.NewRequest("GET", "http://google.com", nil)
req.Header.Set("X-Custom-Header", "hi")

// http.Response
resp, _ := app.Test(req)

// Do something with results:
if resp.StatusCode == fiber.StatusOK {
    body, _ := ioutil.ReadAll(resp.Body)
    fmt.Println(string(body)) // => Hello, World!
}
```
