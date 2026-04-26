variable "aws_region" {
  description = "Região AWS"
  type        = string
  default     = "us-east-1"
}

variable "instance_type" {
  description = "Tipo de instância EC2"
  type        = string
  default     = "t3.medium"
}

variable "ami_id" {
  description = "ID da AMI"
  type        = string
  default     = "ami-0c55b159cbfafe1f0"
}

variable "key_name" {
  description = "Nome da chave SSH"
  type        = string
  default     = "abstergo-key"
}
