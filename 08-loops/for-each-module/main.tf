
variable "components" {
  default = {
    cart = {
      name = "cart",
      instance_type = "t3.small"
    }
    catalogue = {
      name = "catalogue",
      instance_type = "t3.micro"
    }
  }
}

module "ec2" {
  source = "./module"

  for_each = var.components
  instance_type = each.value.name
  name = each.value.name

## always iterate module, not resources.
  ## always map the data and use for_each loop


}