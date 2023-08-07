package main

import (
	"go-collab/cmd/handlers"
	"go-collab/cmd/storage"

	"github.com/labstack/echo/v4"
)

func main() {
	e := echo.New()
	storage.InitDB()

	e.POST("/register", handlers.CreateAkun)
	e.Logger.Fatal(e.Start(":9000"))
}
