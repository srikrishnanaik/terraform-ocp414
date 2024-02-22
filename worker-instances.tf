
resource "aws_instance" "openshift_worker_instances" {
  ami                    = "ami-04e29ab892209d108"
  instance_type          = "t2.large"
  count                  = 2
  subnet_id              = "<Your Subnet ID>"
  key_name               = "openshift_key"
  security_group_ids     = ["${var.security_group_id}"] // specify your security group ID here
  iam_instance_profile   = "openshift"
  user_data              = file("path/to/worker_userdata.txt") // specify the path to your userdata file
  tags = {
    "kubernetes.io/cluster/<your_infra_id_from_metadata.json>" = "shared"
    "Name"                                                    = "worker"
  }

  root_block_device {
    volume_size = 100 // specify the size of the root volume here
    volume_type = "gp2" // specify the volume type here
  }

  // Additional block device mappings can be added here
  // block_device_mappings = file("path/to/mapping.json")
}
