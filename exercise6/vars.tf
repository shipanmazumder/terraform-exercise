variable "REGION" {
  type        = string
  default     = "us-east-1"
  description = "description"
}

variable "ZONE1" {
  type        = string
  default     = "us-east-1a"
  description = "description"
}
variable "ZONE2" {
  type        = string
  default     = "us-east-1b"
  description = "description"
}
variable "ZONE3" {
  type        = string
  default     = "us-east-1c"
  description = "description"
}
variable "ZONE4" {
  type        = string
  default     = "us-east-1d"
  description = "description"
}
variable "ZONE5" {
  type        = string
  default     = "us-east-1e"
  description = "description"
}
variable "ZONE6" {
  type        = string
  default     = "us-east-1f"
  description = "description"
}

variable "AMIS" {
  type = map(any)
  default = {
    us-east-1 = "ami-080e1f13689e07408"
  }
}

variable "USER" {
  type    = string
  default = "ubuntu"
}
variable "PUB_KEY" {
  type    = string
  default = "dovkey.pub"
}
variable "PRIV_KEY" {
  type    = string
  default = "dovkey"
}

