variable "network_name" {
  description = "(Optional) - The name of the network."
  type        = string
  default     = "default"
}

variable "network_zone" {
  description = "(Optional) - Name of network zone, e.g. 'eu-north-1a'."
  type        = string
  default     = "eu-north-1a"
}

variable "network_ip_range" {
  description = "(Optional) - IP Range of the whole Network which must span all included subnets and route destinations. Must be one of the private ipv4 ranges of RFC1918."
  type        = string
  default     = "10.98.0.0/16"
}

variable "network_subnet_ranges" {
  description = "(Optional) - Range to allocate IPs from. Must be a subnet of the ip_range of the Network and must not overlap with any other subnets or with any destinations in routes."
  type        = list(string)
  default = [
    "10.98.0.0/16"
  ]
}
