package repositories

import (
	"database/sql"
	"fmt"
	"go-collab/cmd/models"
	"go-collab/cmd/storage"
)


func GetAkunByID(id int) (models.Akun, error) {
	db := storage.GetDB()

	sqlStatement := `SELECT username FROM akun WHERE id = $1`
	row := db.QueryRow(sqlStatement, id)

	akun := models.Akun{}
	err := row.Scan(&akun.Username)
	if err != nil {
		if err == sql.ErrNoRows {
			return akun, fmt.Errorf("account not found")
		}
		return akun, fmt.Errorf("failed to retrieve account : %w", err)
	}

	return akun, nil
}