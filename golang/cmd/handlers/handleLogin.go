package handlers

import (
	"net/http"
	"fmt"
	"strconv"

	"go-collab/cmd/repositories"
	"go-collab/cmd/session"
	"github.com/labstack/echo/v4"
	"golang.org/x/crypto/bcrypt"
)

func LoginAkun(c echo.Context) error {
	loginData := struct {
		Identifier string `json:"identifier"`
		Password   string `json:"password"`
	}{}
	c.Bind(&loginData)

	user, err := repositories.GetUserByEmailOrUsername(loginData.Identifier)
	if err != nil {
		return c.JSON(http.StatusUnauthorized, "Invalid email/username or password")
	}

	err = bcrypt.CompareHashAndPassword([]byte(user.Password), []byte(loginData.Password))
	if err != nil {
		return c.JSON(http.StatusUnauthorized, "Invalid email/username or password")
	}

	session.SetSession(c, "user", strconv.Itoa(user.Id))
	fmt.Println("Login Berhasil")
	return c.JSON(http.StatusOK, "Login successful")
}
