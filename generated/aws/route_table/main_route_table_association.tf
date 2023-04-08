resource "aws_main_route_table_association" "tfer--vpc-002D-0a665daf1164cb2b1" {
  route_table_id = "${data.terraform_remote_state.route_table.outputs.aws_route_table_tfer--rtb-002D-0787e499b54640fb9_id}"
  vpc_id         = "vpc-0a665daf1164cb2b1"
}
