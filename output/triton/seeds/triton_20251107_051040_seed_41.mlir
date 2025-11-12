"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16x8xi32>, tensor<16x8xi32>) -> tensor<16x8xi32>, sym_name = "complex_mix"}> ({
  ^bb0(%arg0: tensor<16x8xi32>, %arg1: tensor<16x8xi32>):
    %0 = "arith.constant"() <{value = dense<10> : tensor<16x8xi32>}> : () -> tensor<16x8xi32>
    %1 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflow}>: (tensor<16x8xi32>, tensor<16x8xi32>) -> tensor<16x8xi32>
    %2 = "arith.cmpi"(%1, %0, "uge") : (tensor<16x8xi32>, tensor<16x8xi32>) -> tensor<16x8xi1>
    %3 = "arith.select"(%2, %1, %0) : (tensor<16x8xi1>, tensor<16x8xi32>, tensor<16x8xi32>) -> tensor<16x8xi32>
    %4 = "arith.muli"(%3, %0) <{overflowFlags = #arith_overflow}>: (tensor<16x8xi32>, tensor<16x8xi32>) -> tensor<16x8xi32>
    %5 = "arith.divsi"(%4, %0) <{overflowFlags = #arith_overflow}>: (tensor<16x8xi32>, tensor<16x8xi32>) -> tensor<16x8xi32>
    %6 = "arith.remsi"(%4, %0) <{overflowFlags = #arith_overflow}>: (tensor<16x8xi32>, tensor<16x8xi32>) -> tensor<16x8xi32>
    "tt.return"(%5) : (tensor<16x8xi32>) -> ()
  }) : () -> ()
}) : () -> ()