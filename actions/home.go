package actions

import (
	"github.com/gobuffalo/buffalo"
	"github.com/gobuffalo/pop"
	"yt_api/models"
)

// HomeHandler is a default handler to serve up
// a home page.
func HomeHandler(c buffalo.Context) error {
	return c.Render(200, r.JSON(map[string]string{"message": "Welcome to Buffalo!"}))
}

// HomeHandler is a default handler to serve up
// a home page.
func TestHandler(c buffalo.Context) error {
	db, ok := c.Value("tx").(*pop.Connection)
	if !ok {
		return c.Render(400, r.JSON(map[string]string{"err": "connection err"}))
	}
	user := models.User{}
	err := db.Last(&user)
	if err != nil {
		return c.Render(400, r.JSON(map[string]string{"err": err.Error()}))
	}

	return c.Render(200, r.JSON(map[string]string{"name": user.Name}))
}
