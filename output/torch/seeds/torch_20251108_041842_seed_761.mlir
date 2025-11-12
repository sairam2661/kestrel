"builtin.module"() ({
  "func.func"() <{function_type = (!torch,vector<8xf32>, !torch,vector<8xf32>) -> !torch,vector<8xf32>, sym_name = "vector_add"}> ({
  ^bb0(%arg0: !torch,vector<8xf32>, 	!arg1		-> !torch,vector<8xf32>):
  %c = "torch.aten.add"(%arg0, %arg1) : (!torch,vector<8xf32>, !torch,vector<8xf32>) -> !torch,vector<8xf32>
    "func.return"(%c) : (!torch,vector<8xf32>) -> ()
  }) : () -> ()
}) : () -> ()