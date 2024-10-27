variable "vpc_cidr_block" {
  description = "CIDR block cho VPC"
  type        = string
  default     = "192.168.0.0/16"
}

variable "vpc_name" {
  description = "Tên của VPC"
  type        = string
  default     = "Main-VPC"
}

//public subnet 1
variable "public_subnet1_cidr_block" {
  description = "CIDR block cho public subnet 1"
  type        = string
  default     = "192.168.1.0/24"
}

variable "public_subnet1_az" {
  description = "az cho public subnet 1"
  type        = string
  default     = "ap-southeast-1a"
}

variable "public_subnet1_name" {
  description = "tên của public subnet 1"
  type        = string
  default     = "Public Subnet 1"
}

//public subnet 2
variable "public_subnet2_cidr_block" {
  description = "CIDR block cho public subnet 2"
  type        = string
  default     = "192.168.2.0/24"
}

variable "public_subnet2_az" {
  description = "az của public subnet 2"
  type        = string
  default     = "ap-southeast-1b"
}

variable "public_subnet2_name" {
  description = "tên của public subnet 2"
  type        = string
  default     = "Public Subnet 2"
}

//private subnet 1
variable "private_subnet1_cidr_block" {
  description = "CIDR block cho private subnet 1"
  type        = string
  default     = "192.168.1.0/24"
}

variable "private_subnet1_az" {
  description = "az cho private subnet 1"
  type        = string
  default     = "ap-southeast-1a"
}

variable "private_subnet1_name" {
  description = "tên của private subnet 1"
  type        = string
  default     = "Private Subnet 1"
}

//Private Subnet 2
variable "private_subnet2_cidr_block" {
  description = "CIDR block cho private subnet 2"
  type        = string
  default     = "192.168.1.0/24"
}

variable "private_subnet2_az" {
  description = "az cho private subnet 2"
  type        = string
  default     = "ap-southeast-1b"
}

variable "private_subnet2_name" {
  description = "tên của private subnet 2"
  type        = string
  default     = "Private Subnet 2"
}