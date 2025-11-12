"builtin.module"() ({
  "func.func"() <{function_type = (!torch,vector<1000xf32>, !torch,vector<1000xf32>) -> !torch,vector<1000xf32>, sym_name = "vec_add_large"}> ({
  ^bb0(%arg0: !torch,vector<1000xf32>, 	!arg1 	-> !torch,vector<1000xf32>):
      %0 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch,vector<1000xf32>, !torch,vector<1000xf32>) -> !torch,vector<1000xf32>
      "func.return"(%0) : (!torch,vector<1000xf32>) -> ()
  }) : () -> ()
}) : () -> ()