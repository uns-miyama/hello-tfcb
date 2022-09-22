variable "prefix" {
  default = "miyama"
}
variable "address_space" {
  default = "10.0.0.0/16"
}
variable "subnet_prefix" {
  default = "10.0.10.0/24"
}
variable "access_key" {}
variable "secret_key" {}
variable "region" {}
variable "ami" {}
variable "hello_tf_instance_count" {
    default = 1
}
variable "hello_tf_instance_type" {
    default = "t2.micro"
}
