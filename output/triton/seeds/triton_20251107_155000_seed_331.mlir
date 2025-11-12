"builtin.module"() ({
  "tt.func"() <{function_type = (i32, tensor<32xi32>, tensor<32xi32>) -> (tensor<32xi32>, tensor<32xi32>), sym_name = "complex_reduce"}> ({
    ^bb0(%arg0: i32, %arg1: tensor<32xi32>, %arg2: tensor<32xi32>):
      %0 = "arith.constant"() <{value = dense<2> : tensor<32xi32>}> : () -> tensor<32xi32>
      %1 = "arith.constant"() <{value = dense<1> : tensor<32xi32>}> : () -> tensor<32xi32>
      %2 = "tt.expand_dims"(%arg1) <{axis = 1}> : (tensor<32xi32>) -> tensor<32x1xi32>
      %3 = "tt.expand_dims"(%arg2) <{axis = 1}> : (tensor<32xi32>) -> tensor<32x1xi32>
      %4 = "arith.addi"(%2, %3) <{overflowFlags = #arith_overflownone}> : (tensor<32x1xi32>, tensor<32x1xi32>) -> tensor<32x1xi32>
      %5 = "tt.reduce"(%4) <{reduction = "sum"}> : (tensor<32x1xi32>) -> tensor<32xi32>
      %6 = "arith.subi"(%5, %0) <{overflowFlags = #arith_overflownone}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
      "tt.return"(%6, %5) : (tensor<32xi32>, tensor<32xi32>) -> ()
  }) : () -> ()
}) : () -> ()