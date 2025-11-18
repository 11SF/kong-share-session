package main

import (
	"net/http"

	"github.com/gin-gonic/gin"
)

func main() {
	r := gin.Default()

	// API v1
	v1 := r.Group("/api/v1")

	// Order Service
	order := v1.Group("/order")
	{
		order.POST("/create", createOrder)
		order.POST("/cancel", cancelOrder)
	}

	r.Run(":8080")
}

// Order Service Handlers
func createOrder(c *gin.Context) {
	c.String(http.StatusOK, "createOrder")
}

func cancelOrder(c *gin.Context) {
	c.String(http.StatusOK, "cancelOrder")
}
