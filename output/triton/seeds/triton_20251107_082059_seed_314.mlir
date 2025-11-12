"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>, sym_name = "vector_arithmetic"}> ({
  ^bb0(%arg0: tensor<64xi32>, %arg1: tensor<64xi32>):
    %0 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %3 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %4 = "arith.divsi"(%arg0, %0) <{overflowFlags = #arith_overflownone}> : (tensor<64xi32>, i32) -> tensor<64xi32>
    %5 = "arith.remsi"(%arg1, %1) <{overflowFlags = #arith_overflownone}> : (tensor<64xi32>, i32) -> tensor<64xi32>
    %6 = "arith.xori"(%arg0, %arg1) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %7 = "arith.select"(%5, %arg0, %arg1) : (tensor<64xi1>, tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    "tt.return"(%7) : (tensor<64xi32>) -> ()
  }) : () -> ()
}) : () -> ()