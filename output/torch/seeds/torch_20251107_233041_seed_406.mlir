"builtin.module"() ({
  "func.func"() <{function_type = (!torch,vector<32xui8>, !torch,vector<32xsi8>) -> !torch,vector<32xi32>, sym_name = "vector_bitwise_and"}> ({
  ^bb0(%arg0: !torch,vector<32xui8>, 	!arg1		-> !torch,vector<32xi32>):
    %0 = "torch.constant.i32"() <{value = 1 : i32}> : () -> !torch,i32
    %1 = "torch.constant.i32"() <{value = 2 : i32}> : () -> !torch,i32
    %2 = "torch.constant.i32"() <{value = 3 : i32}> : () -> !torch,i32
    %3 = "torch.vtensor.literal"() <{value = dense<[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32]> : vector<32xi16>}> : () -> !torch,vector<32xi16>
    %4 = "torch.aten.bitwise_and.Tensor"(%arg0, %arg1) : (!torch,vector<32xui8>, !torch,vector<32xsi8>) -> !torch,vector<32xi32>
    "func.return"(%4) : (!torch,vector<32xi32>) -> ()
  }) : () -> ()
}) : () -> ()