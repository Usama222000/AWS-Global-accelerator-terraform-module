resource "aws_globalaccelerator_accelerator" "this" {
  name            = var.G_ACC.name
}
resource "aws_globalaccelerator_listener" "this" {
  accelerator_arn = aws_globalaccelerator_accelerator.this.id
  protocol = var.G_ACC.protocol
  port_range {
      from_port = var.G_ACC.from_port
      to_port   = var.G_ACC.to_port
 
    }
}

resource "aws_globalaccelerator_endpoint_group" "this" {
  listener_arn = aws_globalaccelerator_listener.this.id
  endpoint_configuration {
    endpoint_id = var.G_ACC.endpoint_id
    weight      = var.G_ACC.weight
  }
}