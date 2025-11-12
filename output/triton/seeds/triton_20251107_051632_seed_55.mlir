"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>, sym_name = "complex_reduce"}> ({
  ^bb0(%arg0: tensor<16xi32>, %arg1: tensor<16xi32>):
    %0 = "arith.constant"() <{value = dense<0> : tensor<16xi32>}> : () -> tensor<16xi32>
    %1 = "tt.reduce"(%arg0, %0) ({
    ^bb0(%arg2: tensor<16xi32>, %arg3: tensor<16xi32>):
      %2 = "arith.addi"(%arg2, %arg3) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      "scf.yield"(%2) : (tensor<16xi32>) -> ()
    }) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %3 = "tt.reduce"(%arg1, %0) ({
    ^bb0(%arg4: tensor<16xi32>, %arg5: tensor<16xi32>):
      %4 = "arith.addi"(%arg4, %arg5) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      "scf.yield"(%4) : (tensor<16xi32>) -> ()
    }) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %5 = "arith.addi"(%1, %3) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    "tt.return"(%5) : (tensor<16xi32>) -> ()
  }) : () -> ()
}) : () -> ()