variable "arch" {
  description = "Architecture of the instance"
  type        = string
  validation {
    condition     = contains(["x86_64", "aarch64"], var.arch)
    error_message = "invalid architecture"
  }
}

variable "region" {
  description = "AWS region for resources"
  type        = string
}

variable "instance_type" {
  description = "Instance type for resource"
  type        = string
}

variable "root_disk_size" {
  description = "What should the size of the root disk be?"
  type        = number
  default     = 15
}

variable "user_data_start" {
  description = "Instance startup script"
  type        = string
}

variable "user_data_end" {
  description = "Instance shutdown script"
  type        = string
}

variable "instance_profile_name" {
  description = "Name of the instance profile to attach to the instance"
  default     = ""
}
