package repositories

import(
	"fmt"
	"go-collab/cmd/models"
	"go-collab/cmd/storage"
)

func GetUserByEmail(email string) (*models.Akun, error) {
	db := storage.GetDB()
	akun := &models.Akun{}
	sqlStatement := `SELECT id, username, password, email, phone FROM data WHERE email = $1`

	err := db.QueryRow(sqlStatement, email).Scan(&akun.Id, &akun.Username, &akun.Password, &akun.Email, &akun.Phone)
	if err != nil {
		return nil, fmt.Errorf("error fetching akun: %w", err)
	}

	return akun, nil
}