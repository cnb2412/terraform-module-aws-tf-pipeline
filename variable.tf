variable "resource_prefix" {
  description = "The name for the resources. A resource type postfix is appended to the individual ressources."
  type        = string
}

variable "default_branch" {
    type = string
    description = "The name of the default branch for the CodeRepo. Default: main"
    default = "main"
}