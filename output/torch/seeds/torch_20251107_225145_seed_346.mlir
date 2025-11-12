"builtin.module"() ({
  "func.func"() <{function_type = (!torch,vector<3xf32>, !torch,vector<3xf32>) -> !torch,vector<3xf32>, sym_name = "torch.aten.add.Tensor$vector"}> ({
  ^bb0(%arg0: !torch,vector<3xf32>, 	!arg1		->  !torch,vector<3xf32>):  
    %0 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch,vector<3xf32>, !torch,vector<3xf32>) -> !torch,vector<3xf32>
    "func.return"(%0) : (!torch,vector<3xf32>) -> ()
  }) : () -> ()
}) : () -> ()