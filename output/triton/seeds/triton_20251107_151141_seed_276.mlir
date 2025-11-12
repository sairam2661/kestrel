"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>, sym_name = "complex_mul"}> ({
  ^bb0(%arg0: tensor<128xi32>, %arg1: tensor<128xi32>):
    %0 = "tt.make_range"() <{end = 128 : i32, start = 0 : i32}> : () -> tensor<128xi32>
    %1 = "arith.constant"() <{value = dense<1> : tensor<128xi32>}> : () -> tensor<128xi32>
    %2 = "arith.constant"() <{value = dense<2> : tensor<128xi32>}> : () -> tensor<128xi32>
    %3 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %4 = "arith.subi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %5 = "arith.muli"(%3, %4) <{overflowFlags = #arith_overflownone}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %6 = "arith.muli"(%5, %2) <{overflowFlags = #arith_overflownone}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %7 = "arith.addi"(%6, %1) <{overflowFlags = #arith_overflownone}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    "tt.return"(%7) : (tensor<128xi32>) -> ()
  }) : () -> ()
}) : () -> ()