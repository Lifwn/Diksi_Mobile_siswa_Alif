package handlers

import (
	"net/http"
	"strconv"
	"fmt"

	"go-collab/cmd/repositories"

	"github.com/labstack/echo/v4"
)

func GetAkun(c echo.Context) error {
	getAkun, err := repositories.GetAkun()
	if err != nil {
		return c.JSON(http.StatusInternalServerError, err.Error())
	}
	return c.JSON(http.StatusOK, getAkun)
}

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