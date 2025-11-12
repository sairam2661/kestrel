"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<4xi32>, tensor<4xi32>) -> (tensor<4xi32>), sym_name = "vector_operations"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>):
    %0 = "arith.addi"(%arg0, %arg1) : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    %1 = "arith.subi"(%arg0, %arg1) : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    %2 = "arith.muli"(%arg0, %arg1) : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    %3 = "arith.divui"(%arg0, %arg1) : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    %4 = "arith.constant"() <{value = dense<1> : tensor<4xi32>}> : () -> tensor<4xi32>
    %5 = "arith.shli"(%arg0, %4) <{overflowFlags = #arith_overflownone}> : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    %6 = "arith.shri"(%arg1, %4) : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    "tt.return"(%0) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()