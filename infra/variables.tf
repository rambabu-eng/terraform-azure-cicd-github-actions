variable "location" {
  type        = string
  description = "Azure region"
  default     = "australiaeast"
}

variable "project_name" {
  type        = string
  description = "Short project name used for resource naming"
  default     = "tf-cicd"
}

variable "environment" {
  type        = string
  description = "Environment name"
  default     = "dev"
}

variable "tags" {
  type        = map(string)
  description = "Common tags"
  default = {
    owner   = "rambabu"
    purpose = "learning"
  }
}
