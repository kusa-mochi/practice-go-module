package main

import (
  "fmt"

  "greeting.com/greeting"
)

func main() {
  message := greeting.Hello("John")
  fmt.Println(message)
}
