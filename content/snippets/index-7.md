```go
app.Get("/ws", websocket.New(func(c *websocket.Conn) {
  // Websocket logic
  for {
    mtype, msg, err := c.ReadMessage()
    if err != nil {
      break
    }
    log.Printf("Read: %s", msg)

    err = c.WriteMessage(mtype, msg)
    if err != nil {
      break
    }
  }
  log.Println("Error:", err)
}))
```
