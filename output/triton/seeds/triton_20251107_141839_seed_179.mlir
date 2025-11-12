"builtin.module"() ({
  "tt.func"() <{function_type = () -> (), sym_name = "complex_op_sequence"}> ({
    %0 = "tt.make_range"() <{end = 256 : i32, start = 0 : i32}> : () -> tensor<256xi32>
    %1 = "arith.constant"() <{value = dense<1> : tensor<256xi32>}> : () -> tensor<256xi32>
    %2 = "arith.addi"(%0, %1) <{overflowFlags = #arith_overflow_effects}> : (tensor<256xi32>, tensor<256xi32>) -> tensor<256xi32>
    %3 = "arith.subi"(%0, %2) <{overflowFlags = #arith_overflow_effects}> : (tensor<256xi32>, tensor<256xi32>) -> tensor<256xi32>
    %4 = "arith.divsi"(%0, %1) <{overflowFlags = #arith_overflow_effects}> : (tensor<256xi32>, tensor<256xi32>) -> tensor<256xi32>
    %5 = "arith.cmpi"(%0, %2, "eq") : (tensor<256xi32>, tensor<256xi32>) -> tensor<256xi1>
    %6 = "arith.select"(%5, %0, %1) : (tensor<256xi1>, tensor<256xi32>, tensor<256xi32>) -> tensor<256xi32>
    %7 = "tt.addptr"(%0, %6, 4) : (tensor<256xi32>, tensor<256xi32>, i32) -> tensor<256xi32>
    "tt.return"() : () -> ()
  }) : () -> ()
}) : () -> ()