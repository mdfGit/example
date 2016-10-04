provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAJ4JWNSJBS7A7O3TA"
  secret_key = "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"
}

resource "aws_db_instance" "default" {
  identifier             = "${var.identifier}"
  allocated_storage      = "${var.storage}"
  engine                 = "${var.engine}"
  engine_version         = "${lookup(var.engine_version, var.engine)}"
  instance_class         = "${var.instance_class}"
  name                   = "${var.db_name}"
  username               = "${var.username}"
  password               = "${var.password}"
  vpc_security_group_ids = ["sg-f326d888"]
  db_subnet_group_name   = "subnet-c4c2b9ef" 
}

resource "aws_db_subnet_group" "default" {
  name        = "main_subnet_group"
  description = "Our main group of subnets"
  subnet_ids  = ["subnet-c4c2b9ef", "subnet-463d0231"]
}

