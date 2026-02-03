variable "ami_id" {
  description = "inserting ami value"
  type        = string
  default     = "ami-0ff5003538b60d5ec"

}

variable "type" {
  type    = string
  default = "t2.micro"

}

variable "key" {
  type    = string
  default = "mumbaikeypair"

}