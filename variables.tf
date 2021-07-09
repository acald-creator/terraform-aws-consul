variable "acl_bootstrap_bool" {
  type        = bool
  default     = true
  description = "Initial ACL Bootstrap configurations"
}

variable "allowed_inbound_cidrs" {
  type        = list(string)
  description = "List of CIDR blocks to permit inbound Consul access from"
  default = ["0.0.0.0/0"]
}

variable "consul_clients" {
  default     = "3"
  description = "number of Consul instances"
}

variable "consul_config" {
  description = "HCL Object with additional configuration overrides supplied to the consul servers.  This is converted to JSON before rendering via the template."
  default     = {}
}

variable "consul_cluster_version" {
  default     = "0.0.1"
  description = "Custom Version Tag for Upgrade Migrations"
}

variable "consul_servers" {
  default     = "5"
  description = "number of Consul instances"
}

variable "consul_version" {
  description = "Consul version"
  default = "1.10.0"
}

variable "enable_connect" {
  type        = bool
  description = "Whether Consul Connect should be enabled on the cluster"
  default     = true
}

variable "instance_type" {
  default     = "t3.large"
  description = "Instance type for Consul instances"
}

variable "key_name" {
  default     = "ad-linux"
  description = "SSH key name for Consul instances"
}

variable "name_prefix" {
  description = "prefix used in resource names"
  default = "consul-dev"
}

variable "owner" {
  description = "value of owner tag on EC2 instances"
  default = "099720109477"
}

variable "public_ip" {
  type        = bool
  default     = true
  description = "should ec2 instance have public ip?"
}

variable "vpc_id" {
  description = "VPC ID"
  default = "vpc-0373f39dfe85e813c"
}
