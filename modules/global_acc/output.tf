output "global_accelerator_dns_name" {
  value = aws_globalaccelerator_accelerator.this.dns_name
}

output "listener_arn" {
  value = aws_globalaccelerator_listener.this.id
}

output "endpoint_group_id" {
  value = aws_globalaccelerator_endpoint_group.this.id
}
