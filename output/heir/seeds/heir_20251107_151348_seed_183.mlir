"builtin.module"() ({
  "func.func"() <{function_type = (tensor<8x8xi32>, tensor<8x8xi32>) -> tensor<8x8xi32>, sym_name = "matrix_multiply_and_select"}> ({
  ^bb0(%arg0: tensor<8x8xi32>, %arg1: tensor<8x8xi32>):
    %0 = "arith.constant"() <{value = dense<1> : tensor<8x8xi32>}> : () -> tensor<8x8xi32>
    %1 = "arith.muli"(%arg0, %arg1) <{overflowFlags = #arith_overflow_flags_native}> : (tensor<8x8xi32>, tensor<8x8xi32>) -> tensor<8x8xi32>
    %2 = "arith.addi"(%1, %0) <{overflowFlags = #arith_overflow_flags_native}> : (tensor<8x8xi32>, tensor<8x8xi32>) -> tensor<8x8xi32>
    %3 = "arith.cmpi"(%2, %1, "sge") : (tensor<8x8xi32>, tensor<8x8xi32>) -> tensor<8x8xi1>
    %4 = "arith.select"(%3, %2, %1) : (tensor<8x8xi1>, tensor<8x8xi32>, tensor<8x8xi32>) -> tensor<8x8xi32>
    "func.return"(%4) : (tensor<8x8xi32>) -> ()
  }) : () -> ()
}) : () -> ()