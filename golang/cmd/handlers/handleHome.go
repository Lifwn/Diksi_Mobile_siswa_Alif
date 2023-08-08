package handlers

import (
	"net/http"
	"strconv"
	"fmt"

	"go-collab/cmd/repositories"

	"github.com/labstack/echo/v4"
)

func GetAkunByID(c echo.Context) error {
	akunID := c.Param("id")
	id, err := strconv.Atoi(akunID)
	if err != nil {
		return c.JSON(http.StatusBadRequest, fmt.Errorf("invalid account ID"))
	}

	existingAkun, err := repositories.GetAkunByID(id)
	if err != nil {
		return c.JSON(http.StatusInternalServerError, err.Error())
	}

	return c.JSON(http.StatusOK, existingAkun)
}

func Home(c echo.Context) error {
	return c.File("go-collab/lib/page/homepage.dart")
}