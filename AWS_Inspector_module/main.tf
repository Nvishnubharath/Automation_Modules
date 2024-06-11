

resource "aws_inspector_assessment_target" "my_assessment_target" {
  name = var.assessment_target_name

  resource_group_arn = aws_inspector_resource_group.my_resource_group.arn
  

}

resource "aws_inspector_assessment_template" "my_assessment_template" {
  name       = var.assessment_template_name
  target_arn = aws_inspector_assessment_target.my_assessment_target.arn

  duration = var.duration

  rules_package_arns = var.rules_package_arns
    
}

resource "aws_inspector_resource_group" "my_resource_group" {
  tags = {
    Name = var.resource_group_name
    team        = var.team
    environment = var.environment
    owner       = var.owner
    owner_email = var.owner_email
    creation_date = timestamp()
  }
}
