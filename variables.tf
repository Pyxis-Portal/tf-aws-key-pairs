variable "key_name" {
  description = "The name for the key pair. Conflicts with `key_name_prefix`"
  type        = string
  default     = null
}

variable "key_file_name" {
  description = "(Required) The path to the file that will be created. Missing parent directories will be created. If the file already exists, it will be overridden with the given content."
  default     = null
  type        = string
}

variable create_key_file {
  type        = bool
  default     = false
  description = "Determines whether resources will be created, if true"
}
variable create_key {
  type        = bool
  default     = false
  description = "Determines whether resources will be created, if true"
}

variable "file_permission" {
  description = "Permissions to set for the output file, expressed as string in numeric notation. Default value is 0777"
  default     = "0777"
  type        = string
}
