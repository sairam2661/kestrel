"builtin.module"() ({
  "func.func"() <{function_type = (!torch,vector<10xi32>, !torch,vector<10xi32>) -> !torch,vector<10xi64>, sym_name = "add_and_cast"}> ({
  ^bb0(%arg0: !torch,vector<10xi32>, 
      		!arg1
		
		->
		!torch,vector<10xi64>
		):

		%0 = "torch.constant.int"() <{value = 2 : i32}> : () -> !torch,i32
		%1 = "torch.constant.int"() <{value = 1 : i32}> : () -> !torch,i32
		%2 = "torch.constant.int"() <{value = 0 : i32}> : () -> !torch,i32
		%3 = "torch.constant.str"() <{value = "trunc"}> : () -> !torch,none
		%4 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch,vector<10xi32>, !torch,vector<10xi32>) -> !torch,vector<10xi32>
		%5 = "torch.aten.mul.Tensor"(%4, %0) : (!torch,vector<10xi32>, !torch,i32) -> !torch,vector<10xi32>
		%6 = "torch.aten.to.dtype"(%5, %1, %2, %2, %3) : (!torch,vector<10xi32>, !torch,i32, !torch,i32, !torch,i32, !torch,none) -> !torch,vector<10xi64>
		"func.return"(%6) : (!torch,vector<10xi64>) -> ()
  }) : () -> ()
}) : () -> ()