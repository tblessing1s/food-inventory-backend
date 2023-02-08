package com.foodinventory.foodinventorybackend

import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.runApplication

@SpringBootApplication
class FoodInventoryBackendApplication

fun main(args: Array<String>) {
	runApplication<FoodInventoryBackendApplication>(*args)
}
