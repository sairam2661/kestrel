"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>, sym_name = "unary_ops_kernel"}> ({
    ^bb0(%arg0: tensor<128xi32>, %arg1: tensor<128xi32>):
      %0 = "arith.addi"(%arg0, %arg1) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
      %1 = "arith.muli"(%0, %0) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
      %2 = "arith.constant"() <{value = dense<5> : tensor<128xi32>}> : () -> tensor<128xi32>
      %3 = "arith.subi"(%1, %2) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
      "tt.return"(%3) : (tensor<128xi32>) -> ()
  }) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
}) : () -> ()