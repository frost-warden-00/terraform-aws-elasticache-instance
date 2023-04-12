
variable "engine" {
  type        = string
  description = "Name of the cache engine to be used for this cache cluster."
}

variable "node_type" {
  description = "The instance class used"
  type        = string
}

variable "num_cache_nodes" {
  description = "The initial number of cache nodes that the cache cluster will have."
  type        = number
}

variable "parameter_group_name" {
  description = "The name of the parameter group to associate with this cache cluster."
  type        = string
}

variable "engine_version" {
  description = "Version number of the cache engine to be used."
  type        = string
}

variable "port" {
  description = "The port number on which each of the cache nodes will accept connections."
  type        = number
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "elasticache_name" {
  description = "Group identifier."
  type        = string
}

variable "subnet_ids" {
  description = "Subnets id to use for Elasticache."
  type        = list(string)
}
