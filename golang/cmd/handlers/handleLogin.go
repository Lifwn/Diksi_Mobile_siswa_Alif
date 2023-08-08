package handlers

import (
	"net/http"
	"strconv"
	"fmt"

	"go-collab/cmd/repositories"
	"go-collab/cmd/session"
	"github.com/labstack/echo/v4"
	"golang.org/x/crypto/bcrypt"
)

func LoginAkun(c echo.Context) error {
	loginData := struct {
		Email    string `json:"email"`
		Password string `json:"password"`
	}{}
	c.Bind(&loginData)

	user, err := repositories.GetUserByEmail(loginData.Email)
	if err != nil {
		return c.JSON(http.StatusUnauthorized, "Invalid email or password")
	}

	err = bcrypt.CompareHashAndPassword([]byte(user.Password), []byte(loginData.Password))
	if err != nil {
		return c.JSON(http.StatusUnauthorized, "Invalid email or password")
	}

	session.SetSession(c, "user", strconv.Itoa(user.Id))
	fmt.Println("Login Berhasil")
	return c.JSON(http.StatusOK, "Login successful")
}
