package main

import (
	"net/http"

	"github.com/gin-gonic/gin"
)

func main() {
	r := gin.Default()

	// API v1
	v1 := r.Group("/api/v1")

	// Payment Service
	payment := v1.Group("/payment")
	{
		payment.POST("/payment", processPayment)
	}

	r.Run(":8082")
}

// Payment Service Handlers
func processPayment(c *gin.Context) {
	c.String(http.StatusOK, "processPayment")
}
