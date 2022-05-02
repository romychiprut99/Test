resource "aws_launch_template" "lt-013c2ab4c81d96fe6" {
  block_device_mappings {
    device_name = "/dev/xvda"
    ebs {
      encrypted   = "true"
      iops        = 0
      volume_size = 20
      volume_type = "gp3"
    }
  }
  default_version         = 1
  disable_api_termination = false
  iam_instance_profile {
    name = "KarpenterNodeInstanceProfile-prod-external-services"
  }
  image_id = "ami-01a09362cdb8f50b3"
  metadata_options {
    http_endpoint               = "enabled"
    http_protocol_ipv6          = "disabled"
    http_put_response_hop_limit = 2
    http_tokens                 = "required"
  }
  name = "Karpenter-prod-external-services-6559852972741842840"
  tags = {
    Name                            = "karpenter.sh/provisioner-name/pini"
    "karpenter.sh/provisioner-name" = "pini"
  }
  user_data              = "REDACTED-BY-FIREFLY:48a3ae9f293dc2a35e23403188e8bbf6eab1026d701ff5a57a154560007a884f:sha256"
  vpc_security_group_ids = ["sg-073a49d3f7c7dc971"]
}

