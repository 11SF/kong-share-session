package main

import (
	"net/http"

	"github.com/gin-gonic/gin"
)

func main() {
	r := gin.Default()

	// API v1
	v1 := r.Group("/api/v1")

	// User Service
	user := v1.Group("/user")
	{
		user.POST("/login", login)
		user.GET("/get-profile", getProfile)
	}

	r.Run(":8081")
}

// User Service Handlers
func login(c *gin.Context) {
	c.String(http.StatusOK, "login")
}

func getProfile(c *gin.Context) {
	c.String(http.StatusOK, "getProfile")
}
