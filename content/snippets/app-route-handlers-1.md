````go
// Function signature
// HTTP methods
func (app *App) Get(path string, handlers ...Handler) Router
func (app *App) Head(path string, handlers ...Handler) Router
func (app *App) Post(path string, handlers ...Handler) Router
func (app *App) Put(path string, handlers ...Handler) Router
func (app *App) Delete(path string, handlers ...Handler) Router
func (app *App) Connect(path string, handlers ...Handler) Router
func (app *App) Options(path string, handlers ...Handler) Router
func (app *App) Trace(path string, handlers ...Handler) Router
func (app *App) Patch(path string, handlers ...Handler) Router

// Add allows you to specifiy a method as value
func (app *App) Add(method, path string, handlers ...Handler) Router

// All will register the route on all HTTP methods
// Almost the same as app.Use but not bound to prefixes
func (app *App) All(path string, handlers ...Handler) Router
```