variable "name" {
  description = "The Function Compute function name. "
  type        = string
  default     = "terraform_name"
}

variable "service" {
  description = "The Function Compute service name."
  type        = string
  default     = ""
}

variable "description" {
  description = "The Function Compute function description."
  type        = string
  default     = "tf"
}

variable "oss_bucket" {
  description = "The OSS bucket location containing the function's deployment package."
  type        = string
  default     = ""
}

variable "oss_key" {
  description = "The OSS key of an object containing the function's deployment package."
  type        = string
  default     = ""
}

variable "handler" {
  description = "The function entry point in your code."
  type        = string
  default     = "hello.handler"
}

variable "memory_size" {
  description = "The specification of memory size."
  type        = string
  default     = "512"
}

variable "runtime" {
  description = "The specification of runtime."
  type        = string
  default     = "php7.2"
}

variable "environment_variables" {
  description = " A map that defines environment variables for the function."
  type        = map(string)
  default     = {
    prefix    = "terraform"
  }
}
