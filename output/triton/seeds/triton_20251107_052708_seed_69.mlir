"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<i32>, tensor<i32>) -> tensor<i32>, sym_name = "complex_op_sequence"}> ({
  ^bb0(%arg0: tensor<i32>, %arg1: tensor<i32>):
    %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<i32>, tensor<i32>) -> tensor<i32>
    %1 = "arith.constant"() <{value = dense<2> : tensor<i32>}> : () -> tensor<i32>
    %2 = "arith.muli"(%0, %1) <{overflowFlags = #arith_overflownone}> : (tensor<i32>, tensor<i32>) -> tensor<i32>
    %3 = "arith.subi"(%2, %arg0) <{overflowFlags = #arith_overflownone}> : (tensor<i32>, tensor<i32>) -> tensor<i32>
    %4 = "arith.xori"(%3, %arg1) : (tensor<i32>, tensor<i32>) -> tensor<i32>
    %5 = "arith.select"(%4, %arg0, %arg1) : (tensor<i32>, tensor<i32>, tensor<i32>) -> tensor<i32>
    %6 = "arith.divsi"(%5, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<i32>, tensor<i32>) -> tensor<i32>
    "tt.return"(%6) : (tensor<i32>) -> ()
  }) : () -> ()
}) : () -> ()