### CCL required vairables ###

variable "client" {
  type        = string
  description = "(required) client / customer name"
}

variable "enviroment" {
  type        = string
  description = "(required) client / customer name"
}

variable "extra_tags" {
  type        = map(string)
  description = "Extra tags to set on each created resource."
  default     = {}
}

variable "custom_resource_name" {
  type        = string
  description = "(optional) allows user to provide a custom name for resoruces, if omitted module will genrate resrouce names "
  default     = null
}