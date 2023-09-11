variable "G_ACC" {
    type    = object({
      name = string
      endpoint_id     = string
      weight          = number
      from_port       = number
      to_port         = number
      protocol        = string
})
}
