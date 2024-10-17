Create a Terraform Template/Script Which would do this following
 1. create a VPC.
 2. three Subnets Each of DMZ, WEB, APP & Database Layer. 
 3. DMZ Layer to be Public Facing, WHere as WEB, APP & Database Layer to be Private.
 4. Should have Routes of Nat Gateway For Private Subnets.
 5. Also Create a EC2 with a Linux 2 AMI which in one Web Subnet with a specific Priviate IP, And Ensure that the IMDV2 Is enabled and a User Data Script to Install Apache on that EC2 instance.