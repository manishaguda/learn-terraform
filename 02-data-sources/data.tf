data "aws_ami" "example" {
  most_recent      = true
  name_regex       = "Centos-8-DevOps-Practice"
  owners           = ["973714476881"]


}

output "ami" {
  value = data.aws_ami.example
}

data "aws_instances" "foo" {
  instances_id = "i-0e0bab17ea9e03b55"
}

output "instances" {
  value = data.aws_instances.foo.public_ip
}