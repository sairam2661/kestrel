"builtin.module"() ({
  "func.func"() <{function_type = (!torch,vector<4xi32>, !torch,vector<4xi32>) -> !torch,vector<4xi32>, sym_name = "torch.aten.bitwise_and$vector"}> ({
  ^bb0(%arg0: !torch,vector<4xi32>, 	!arg1		-> !torch,vector<4xi32>):
    %0 = "torch.aten.bitwise_and.Tensor"(%arg0, %arg1) : (!torch,vector<4xi32>, !torch,vector<4xi32>) -> !torch,vector<4xi32>
    "func.return"(%0) : (!torch,vector<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()