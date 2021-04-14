output "aws_accout_id" {
  value = data.aws_caller_identity.current.account_id
}

output "aws_user_id" {
  value = data.aws_caller_identity.current.user_id
}

output "current_region" {
  value = data.aws_region.current.name
}

output "ec2_priv_ip" {
  value = aws_instance.web.private_ip
}

output "ec2_subnet_id" {
  value = aws_instance.web.subnet_id
}