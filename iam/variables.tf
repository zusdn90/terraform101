variable "aws_region" {
    description = "region for aws."
}

variable "iam_user_list" {
    description = "user list."
    type    = list(string)
}

variable "image_id" {
  type = string
}

variable "availability_zone_names" {
  type    = list(string)
  default = ["ap-norheast-3"]
}

variable "ami_id_maps" {
  type = map
  default = {}
}