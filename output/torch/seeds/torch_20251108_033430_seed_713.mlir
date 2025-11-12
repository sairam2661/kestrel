"builtin.module"() ({
  "func.func"() <{function_type = (!torch,vector<3xi32>, !torch,vector<3xi32>) -> !torch,vector<3xi32>, sym_name = "vector_add"}> ({
  ^bb0(%arg0: !torch,vector<3xi32>, 	!arg1, !torch,vector<3xi32> 	-> 	!torch,vector<3xi32>):
    %0 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch,vector<3xi32>, !torch,vector<3xi32>) -> !torch,vector<3xi32>
    "func.return"(%0) : (!torch,vector<3xi32>) -> ()
  }) : () -> ()
}) : () -> ()