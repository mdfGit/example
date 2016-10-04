variable "cidr_blockssubnet" {
  default     = "0.0.0.0/0"
  description = "CIDR for sg"
}

variable "sg_name-subnets" {
  default     = "rds_sg"
  description = "Tag Name for sg"
}
