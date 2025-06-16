variable "bucket" {
default = "project2-bucket-ragefilledlbstr"
type = string

}

variable "tags" {
type = map(string)
default = {
  Environment = "Production"
  Project     = "Project2"
}
}

variable "region" {
  default = "eu-west-1"
  type = string
}