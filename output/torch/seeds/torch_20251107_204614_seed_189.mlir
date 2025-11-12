"builtin.module"() ({
  "func.func"() <{function_type = (!torch,vector<3xi32>, !torch,vector<3xi64>) -> !torch,vector<3xi64>, sym_name = "torch.aten.add_and_convert"}> ({
  ^bb0(%arg0: !torch,vector<3xi32>, 	!arg1 	-> !torch,vector<3xi64>):
    %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch,vector<3xi64>
    %1 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch,vector<3xi32>, !torch,vector<3xi64>) -> !torch,vector<3xi64>
    "func.return"(%1) : (!torch,vector<3xi64>) -> ()
  }) : () -> ()
}) : () -> ()