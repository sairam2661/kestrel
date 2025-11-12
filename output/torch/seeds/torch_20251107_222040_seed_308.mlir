"builtin.module"() ({
  "func.func"() <{function_type = (!torch,vector<8xf32>, !torch,vector<8xf32>) -> !torch,vector<8xf32>, sym_name = "add_vectors"}> ({
  ^bb0(%arg0: !torch,vector<8xf32>, 	!arg1, !torch,vector<8xf32> 	-> !torch,vector<8xf32>):
	%1 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch,vector<8xf32>, !torch,vector<8xf32>) -> !torch,vector<8xf32>
	"func.return"(%1) : (!torch,vector<8xf32>) -> ()
  }) : () -> ()
}) : () -> ()