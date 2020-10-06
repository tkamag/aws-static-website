variable "aws_region" {
  type        = string
  description = "The region were this website will be deployed to."
  default     = "eu-central-1"
}

variable "env" {
  type        = string
  description = "The name of the environment (namespace)."
}

variable "github_repo" {
  type        = string
  description = "The name of the current github repository, for example: saragerion/aws-static-website"
}

variable "owner" {
  type        = string
  description = "The name of the owner of this website"
}
