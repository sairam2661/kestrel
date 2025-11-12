"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>, sym_name = "complex_compute"}> ({
    ^bb0(%arg0: tensor<128xi32>, %arg1: tensor<128xi32>):
      %0 = "arith.constant"() <{value = dense<10> : tensor<128xi32>}> : () -> tensor<128xi32>
      %1 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
      %2 = "arith.muli"(%0, %1) <{overflowFlags = #arith_overflownone}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
      %3 = "arith.remsi"(%2, %0) <{overflowFlags = #arith_overflownone}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
      %4 = "arith.divsi"(%2, %0) <{overflowFlags = #arith_overflownone}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
      %5 = "arith.xori"(%3, %4) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
      %6 = "tt.make_range"(%5) : (tensor<128xi32>) -> tensor<128xi32>
      "tt.return"(%6) : (tensor<128xi32>) -> ()
  }) : () -> ()
}) : () -> ()