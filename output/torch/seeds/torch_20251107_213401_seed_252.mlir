"builtin.module"() ({
  "func.func"() <{function_type = (!torch,vector<3xsi32>, !torch,vector<3xi64>) -> !torch,vector<3xi64>, sym_name = "mixed_bit_width_vector_operations"}> ({
  ^bb0(%arg0: !torch,vector<3xsi32>, 	!arg1 	-> !torch,vector<3xi64>):
    %0 = "torch.constant.int"() <{value = 10 : i64}> : () -> !torch,i64
    %1 = "torch.constant.float"() <{value = 3.14 : f64}> : () -> !torch,f64
    %2 = "arith.addi"(%arg0, %0) : (!torch,vector<3xsi32>, !torch,i64) -> !torch,vector<3xsi32>
    %3 = "arith.extsi"(%2) : (!torch,vector<3xsi32>) -> !torch,vector<3xi64>
    %4 = "arith.muli"(%3, %0) : (!torch,vector<3xi64>, !torch,i64) -> !torch,vector<3xi64>
    %5 = "arith.addf"(%4, %1) : (!torch,vector<3xi64>, !torch,f64) -> !torch,vector<3xi64>
    "func.return"(%5) : (!torch,vector<3xi64>) -> ()
  }) : () -> ()
}) : () -> ()