variable "name" {
  type        = string
  description = "Storage Account Name"
}

variable "location" {
  type        = string
  description = "Location"
  default     = "centralus"
}

variable "resource_group_name" {
  type        = string
  description = "Resource Group Name"
}

variable "account_tier" {
  type        = string
  description = "Storage Account Tier"
  default     = "Standard"
}

variable "account_replication_type" {
  type        = string
  description = "Account Replication Type"
  default     = "LRS"
}

variable "public_network_access_enabled" {
  type        = bool
  description = "Allow Blob Public Access"
  default     = false
}

variable "container_name" {
  type        = string
  description = "Container Name"
  default     = "files"
}

variable "container_access_type" {
  type        = string
  description = "Container Access Type"
  default     = "private"
  
}

variable "tags" {
  default = {}
}
