"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>, sym_name = "tensor_compute"}> ({
  ^bb0(%arg0: tensor<16xi32>, %arg1: tensor<16xi32>):
    %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %1 = "arith.constant"() <{value = dense<2> : tensor<16xi32>}> : () -> tensor<16xi32>
    %2 = "arith.muli"(%0, %1) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %3 = "arith.constant"() <{value = dense<3> : tensor<16xi32>}> : () -> tensor<16xi32>
    %4 = "arith.divsi"(%2, %3) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %5 = "arith.constant"() <{value = dense<4> : tensor<16xi32>}> : () -> tensor<16xi32>
    %6 = "arith.remsi"(%4, %5) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    "tt.return"(%6) : (tensor<16xi32>) -> ()
  }) : () -> ()
}) : () -> ()