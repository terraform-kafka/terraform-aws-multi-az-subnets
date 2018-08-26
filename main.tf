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

resource "aws_subnet" "main" {
  count             = "${length(var.subnet_cidr_blocks)}"
  vpc_id            = "${var.vpc_id}"
  cidr_block        = "${element(var.cidr_blocks, index)}"
  availability_zone = "${var.zones[index % length(var.zones)]}"

  tags = "${
    merge(
      var.tags,
      map("Name", "${var.name}-${var.zones[index % length(var.zones)]}")
    )
  }"
}
