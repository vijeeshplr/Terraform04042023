resource "aws_route_table_association" "tfer--subnet-002D-013b4cc22ad6dbd3e" {
  route_table_id = "${data.terraform_remote_state.route_table.outputs.aws_route_table_tfer--rtb-002D-0e5c8b6a321151b4a_id}"
  subnet_id      = "subnet-013b4cc22ad6dbd3e"
}

resource "aws_route_table_association" "tfer--subnet-002D-01903c5b636805d26" {
  route_table_id = "${data.terraform_remote_state.route_table.outputs.aws_route_table_tfer--rtb-002D-0e5c8b6a321151b4a_id}"
  subnet_id      = "subnet-01903c5b636805d26"
}

resource "aws_route_table_association" "tfer--subnet-002D-0536a97fcceefcb21" {
  route_table_id = "${data.terraform_remote_state.route_table.outputs.aws_route_table_tfer--rtb-002D-072ef99bb7ad01f8f_id}"
  subnet_id      = "subnet-0536a97fcceefcb21"
}

resource "aws_route_table_association" "tfer--subnet-002D-07a9327d99138bf22" {
  route_table_id = "${data.terraform_remote_state.route_table.outputs.aws_route_table_tfer--rtb-002D-00817de9d86b0efbb_id}"
  subnet_id      = "subnet-07a9327d99138bf22"
}

resource "aws_route_table_association" "tfer--subnet-002D-0bb3b0d03592edc29" {
  route_table_id = "${data.terraform_remote_state.route_table.outputs.aws_route_table_tfer--rtb-002D-04cd59161ef16b603_id}"
  subnet_id      = "subnet-0bb3b0d03592edc29"
}

resource "aws_route_table_association" "tfer--subnet-002D-0fba58e730842a168" {
  route_table_id = "${data.terraform_remote_state.route_table.outputs.aws_route_table_tfer--rtb-002D-0e5c8b6a321151b4a_id}"
  subnet_id      = "subnet-0fba58e730842a168"
}
