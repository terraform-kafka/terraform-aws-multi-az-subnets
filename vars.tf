/*
Copyright 2018 Bryan Frimin.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
*/

variable "name" {
  type        = "string"
  description = "The prefix name for subnets."
}

variable "vpc_id" {
  type        = "string"
  description = "The VPC used to host the subnets."
}

variable "cidr_blocks" {
  type        = "list"
  description = "List of CIDR blocks to allocate in the VPC."
  default     = []
}

variable "zones" {
  type        = "list"
  description = "List of AZ used to create the subnets."
  default     = ["eu-west-1a", "eu-west-1b", "eu-west-1c"]
}

variable "tags" {
  type        = "map"
  description = "Extra tags to add on the created subnets."
  default     = {}
}
