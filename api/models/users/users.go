package users

// Users - slice of User
type Users []User

// User - a model of user
type User struct {
	ID       int64  `xorm:"id"`
	Email    string `xorm:"email"`
	Password string `xorm:"password"`
}

// TableName -sets the table name for user model
func (u *User) TableName() string {
	return "users"
}
