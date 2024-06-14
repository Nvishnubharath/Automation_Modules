resource "aws_mq_broker" "broker_1" {
  broker_name = var.broker_name

  engine_type        = var.engine_type
  engine_version     = var.engine_version
  host_instance_type = var.host_instance_type
  security_groups    = [aws_security_group.broker_1_sg.id]
  subnet_ids         = [aws_subnet.broker_1_subnet.id]

  configuration {
    id       = aws_mq_configuration.broker_1_config.id
    revision = aws_mq_configuration.broker_1_config.latest_revision
  }

  user {
    username = var.username
    password = var.password
  }
  tags={
    team=var.team
    environment=var.environment
    owner=var.owner
    owner_email=var.owner_email
    creation_date=timestamp()
  }
}

resource "aws_mq_configuration" "broker_1_config" {
  name           = var.configuration_name
  description    = var.configuration_description
  engine_type    = var.engine_type
  engine_version = var.engine_version

  data = <<DATA
<?xml version="1.0" encoding="UTF-8"?>
<broker xmlns="http://activemq.apache.org/schema/core">
  <destinations>
    <queue physicalName="example.queue" />
  </destinations>
</broker>
DATA
}

resource "aws_security_group" "broker_1_sg" {
  name_prefix = var.aws_security_group_name_prefix
  vpc_id      = aws_vpc.broker_1_vpc.id

 ingress {
    from_port   = var.from_port_var
    to_port     = var.to_port_var
    protocol    = var.protocal
    cidr_blocks = var.cidr_blocks
  }
}

resource "aws_vpc" "broker_1_vpc" {
  cidr_block = var.vpc_cidr_block
}

resource "aws_subnet" "broker_1_subnet" {
  vpc_id     = aws_vpc.broker_1_vpc.id
  cidr_block = var.subnet_cidr_block
}
