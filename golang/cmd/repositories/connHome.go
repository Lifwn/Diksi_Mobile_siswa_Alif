package repositories

import (
	"database/sql"
	"fmt"
	"go-collab/cmd/models"
	"go-collab/cmd/storage"
)

func GetAkun() ([]models.Akun, error) {
	db := storage.GetDB()

	sqlStatement := `SELECT * FROM akun`
	rows, err := db.Query(sqlStatement)
	if err != nil {
		return nil, fmt.Errorf("error retrieving account: %w" , err)
	}
	defer rows.Close()

	getAkun := []models.Akun{}
	for rows.Next() {
		get_Akun := models.Akun{}
		err := rows.Scan(&get_Akun.Id, &get_Akun.Username, &get_Akun.Password, &get_Akun.Email, &get_Akun.Phone)
		if err != nil {
			return nil, fmt.Errorf("error scanning account")
		}
		getAkun = append(getAkun, get_Akun)
	}

	if err := rows.Err(); err != nil {
		return nil, fmt.Errorf("error iterating over account: %w", err)
	}

	return getAkun, nil
}

func GetAkunByID(id int) (models.Akun, error) {
	db := storage.GetDB()

	sqlStatement := `SELECT * FROM akun WHERE id = $1`
	row := db.QueryRow(sqlStatement, id)

	akun := models.Akun{}
	err := row.Scan(&akun.Id, &akun.Username, &akun.Password, &akun.Email, &akun.Phone)
	if err != nil {
		if err == sql.ErrNoRows {
			return akun, fmt.Errorf("account not found")
		}
		return akun, fmt.Errorf("failed to retrieve account : %w", err)
	}

	return akun, nil
}