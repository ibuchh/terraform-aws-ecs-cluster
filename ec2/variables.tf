//----------------------------------------------------------------------
// Shared Variables
//----------------------------------------------------------------------

variable "vpc-id" {}
variable "subnet-id-1" {}
variable "subnet-id-2" {}
variable "security-group-id" {}
variable "ecs-cluster-name" {}
variable "ecs-instance-role-name" {}
variable "ecs-instance-profile-name" {}
variable "ecs-key-pair-name" {}

//----------------------------------------------------------------------
// Autoscaling Group Variables
//----------------------------------------------------------------------

variable "autoscaling-group-name" {
  description = "The name for the autoscaling group for the cluster."
  default     = "mesh-ecs-asg"
}

variable "max-instance-size" {
  description = "The name for the autoscaling group for the cluster."
  default     = 5
}

variable "min-instance-size" {
  description = "The name for the autoscaling group for the cluster."
  default     = 2
}

variable "desired-capacity" {
  description = "The name for the autoscaling group for the cluster."
  default     = 3
}

variable "health-check-grace-period" {
  description = "The name for the autoscaling group for the cluster."
  default     = 300
}

//----------------------------------------------------------------------
// Application Load Balancer Variables
//----------------------------------------------------------------------

variable "load-balancer-name" {
  description = "The name for the autoscaling group for the cluster."
  default     = "mesh-ecs-load-balancer"
}

variable "target-group-name" {
  description = "The name for the autoscaling group for the cluster."
  default     = "mesh-ecs-target-group"
}

//----------------------------------------------------------------------
// Launch Configuration Variables
//----------------------------------------------------------------------

variable "launch-configuration-name" {
  description = "The name for the autoscaling group for the cluster."
  default     = "mesh-ecs-launch-configuration"
}

variable "image-id" {
  description = "The name for the autoscaling group for the cluster."
  default     = "ami-7114c909"
  //us-east-2 = ami-0fbd313043845c4f2
  //us-east-1 = ami-097e3d1cdb541f43e
  //us-west-2 = ami-0fb71e703258ab7eb
  //eu-west-2 = ami-0393b5f363fbd613a
  //eu-west-1 = ami-0bf45a5f4ab05b949
  //eu-central-1 = ami-074dc9dd588b6ea52


}

variable "instance-type" {
  description = "The name for the autoscaling group for the cluster."
  default     = "t2.medium"
}
