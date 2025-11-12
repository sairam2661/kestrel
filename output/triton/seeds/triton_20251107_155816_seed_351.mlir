"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<32xi32>, tensor<32xi32>, tensor<32xi32>) -> (tensor<32xi32>), sym_name = "complex_operations"}> ({
    ^bb0(%arg0: tensor<32xi32>, %arg1: tensor<32xi32>, %arg2: tensor<32xi32>):
      %0 = "tt.make_range"() <{end = 32 : i32, start = 0 : i32}> : () -> tensor<32xi32>
      %1 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
      %2 = "arith.muli"(%1, %arg2) <{overflowFlags = #arith_overflownone}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
      %3 = "arith.constant"() <{value = dense<2> : tensor<32xi32>}> : () -> tensor<32xi32>
      %4 = "arith.addi"(%2, %3) <{overflowFlags = #arith_overflownone}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
      %5 = "arith.xori"(%4, %arg0) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
      %6 = "tt.reduce"(%5, %0) <{operation = "add"}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
      "tt.return"(%6) : (tensor<32xi32>) -> ()
    }) : (tensor<32xi32>, tensor<32xi32>, tensor<32xi32>) -> (tensor<32xi32>)
}) : () -> ()