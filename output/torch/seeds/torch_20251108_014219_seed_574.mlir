"builtin.module"() ({
  "func.func"() <{function_type = (!torch,vector<32xi32>, !torch,vector<32xi32>) -> !torch,vector<32xi32>, sym_name = "vector_add_sub"}> ({
  ^bb0(%arg0: !torch,vector<32xi32>, 		!arg1 	-> !torch,vector<32xi32>) :
    %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch,vector<32xi32>
    %1 = "torch.aten.add.Tensor"(%arg0, %arg1, %0) : (!torch,vector<32xi32>, !torch,vector<32xi32>, !torch,vector<32xi32>) -> !torch,vector<32xi32>
    %2 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch,vector<32xi32>
    %3 = "torch.aten.sub.Tensor"(%1, %2, %0) : (!torch,vector<32xi32>, !torch,vector<32xi32>, !torch,vector<32xi32>) -> !torch,vector<32xi32>
    "func.return"(%3) : (!torch,vector<32xi32>) -> ()
  }) : () -> ()
}) : () -> ()