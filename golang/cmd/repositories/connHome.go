package repositories

import (
	"database/sql"
	"fmt"
	"go-collab/cmd/models"
	"go-collab/cmd/storage"
)


func GetAkunByID(identifier string) (models.Akun, error) {
	db := storage.GetDB()

	sqlStatement := `
		SELECT username FROM akun WHERE username = $1 OR email = $1
`

	row := db.QueryRow(sqlStatement, identifier)

	user := models.Akun{}
	err := row.Scan(&user.Username)
	if err != nil {
		if err == sql.ErrNoRows {
			return user, fmt.Errorf("user not found")
		}
		return user, fmt.Errorf("failed to retrieve user: %w", err)
	}

	return user, nil
}