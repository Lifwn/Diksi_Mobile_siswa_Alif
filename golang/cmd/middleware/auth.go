package middleware

import (
	"go-collab/cmd/session"
	"net/http"

	"github.com/labstack/echo/v4"
)

func RequireLogin(next echo.HandlerFunc) echo.HandlerFunc {
	return func(c echo.Context) error {
		userID := session.GetSession(c, "user")
		if userID == "" {
			return c.JSON(http.StatusOK, "email or password is invalid!") 
		}
		
		return next(c)
	}
}

func NoCacheMiddleware(next echo.HandlerFunc) echo.HandlerFunc {
	return func(c echo.Context) error {
		c.Response().Header().Set("Cache-Control", "no-cache, no-store, must-revalidate")
		c.Response().Header().Set("Pragma", "no-cache")
		c.Response().Header().Set("Expires", "0")
		return next(c)
	}
}