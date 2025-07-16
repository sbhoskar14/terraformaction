variable "sub_id" {
  type = string
}

variable "tenant_id" {
  type = string
}

variable "sp_id" {
  type = string
}

variable "sp_secret" {
  type      = string
  sensitive = true
}