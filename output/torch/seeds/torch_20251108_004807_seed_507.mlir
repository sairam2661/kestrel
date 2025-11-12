"builtin.module"() ({
  "func.func"() <{function_type = (!torch,vector<4xi32>, !torch,vector<4xi32>) -> !torch,vector<4xi64>, sym_name = "tensor_and_vector_ops"}> ({
  ^bb0(%arg0: !torch,vector<4xi32>, 	!arg1		-> !torch,vector<4xi64>):
    %0 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch,vector<4xi32>, !torch,vector<4xi32>) -> !torch,vector<4xi32>
    %1 = "torch.aten.mul.Tensor"(%0, %0) : (!torch,vector<4xi32>, !torch,vector<4xi32>) -> !torch,vector<4xi32>
    %2 = "torch.aten.cast.Scalar"(%1, 64) : (!torch,vector<4xi32>) -> !torch,vector<4xi64>
    "func.return"(%2) : (!torch,vector<4xi64>) -> ()
  }) : () -> ()
}) : () -> ()