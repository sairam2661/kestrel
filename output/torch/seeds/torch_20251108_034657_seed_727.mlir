"builtin.module"() ({
  "func.func"() <{function_type = (!torch,vector<4xi32>, !torch,vector<4xi32>) -> !torch,vector<4xi32>, sym_name = "torch.aten.add.Tensor$vec"}> ({
  ^bb0(%arg0: !torch,vector<4xi32>, 	!arg1		->		!torch,vector<4xi32>):
    %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch,i32
    %1 = "torch.aten.add.Tensor"(%arg0, %arg1, %0) : (!torch,vector<4xi32>, !torch,vector<4xi32>, !torch,i32) -> !torch,vector<4xi32>
    "func.return"(%1) : (!torch,vector<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()