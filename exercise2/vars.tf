variable "REGION" {
  type        = string
  default     = "us-east-1"
  description = "description"
}

variable "ZONE" {
  type        = string
  default     = "us-east-1a"
  description = "description"
}

variable "AMIS" {
  type = map(any)
  default = {
    us-east-1 = "ami-080e1f13689e07408"
  }
}

