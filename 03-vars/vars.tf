# String Data Type
variable "sample1" {
  default = "Hello World"
}

# Number Data Type
variable "sample2" {
  default = 100
}

# Boolean Data Type
variable "sample3" {
  default = true
}

# Default variable type
variable "sample4" {
  default = 100
}

output "sample4" {
  value = var.sample4
}

# List Variable Type
variable "sample5" {
  default = [
  100,
  "abc",
  "xyz",
  ]
}

output "sample5" {
  value = var.sample5[1]
}

# Map Variable Type
variable "sample6" {
  default = {
    number = 100
    string = "xyz"
    boolean = false
  }
}

output "sample6" {
  value = var.sample6["number"]
}

## Variable from tfvars
variable "demo1" {}

output "demo1" {
  value = var.demo1
}

## Variable From Shell env variables
variable "demo2" {
  default = null
}

output "demo2" {
  value = var.demo2
}

