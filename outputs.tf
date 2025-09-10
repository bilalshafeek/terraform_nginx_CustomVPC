output "ec2_public_ip" {
  value = module.ec2.instance_public_ip
}

output "security_group_id" {
  value = module.network.sg_id
}
