variable "vpc_info" {
  type = object({
    cidr_block = string
    tags       = map(string)
  })



}


variable "public_subnet" {
  type = object({
    cidr_block = string
    az         = string
    tags       = map(string)
  })

}



variable "private_subnet" {
  type = object({
    cidr_block = string
    az         = string
    tags       = map(string)
  })
}



variable "public_security_group" {
  type = object({
    name        = string
    description = string
    tags        = map(string)
    inbound_rules = list(object({
      port        = number
      protocol    = string
      source      = string
      description = string
    }))
  })

}






variable "private_security_group" {
  type = object({
    name        = string
    description = string
    tags        = map(string)
    inbound_rules = list(object({
      port        = number
      protocol    = string
      source      = string
      description = string
    }))
  })

}