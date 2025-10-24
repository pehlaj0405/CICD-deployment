variable "location" {
  type    = string
  default = "eastus"
}

variable "base_name" {
  type    = string
  default = "ghdemo"   # used to build names; final name will include random suffix
}
