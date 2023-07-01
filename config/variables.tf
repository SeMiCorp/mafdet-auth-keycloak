variable "mafdet_realm" {
  type        = string
  description = "The keycloak realm for mafdet"
  sensitive   = true
}

variable "mafdet_url" {
  type        = string
  description = "The website url for mafdet"
  sensitive   = true
}

variable "include_test_users" {
  type        = bool
  description = "Whether to include test users or not"
  default     = false
}