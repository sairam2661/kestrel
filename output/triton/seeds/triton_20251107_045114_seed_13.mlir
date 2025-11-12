"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16xi32>, tensor<16xi32>) -> (tensor<16xi32>), sym_name = "tensor_reduction"}> ({
  ^bb0(%arg0: tensor<16xi32>, %arg1: tensor<16xi32>):
    %0 = "arith.constant"() <{value = dense<1> : tensor<16xi32>}> : () -> tensor<16xi32>
    %1 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflow_mode}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %2 = "tt.reduce"() <{operation = "add"}> ({
      ^bb0(%arg2: tensor<16xi32>, %arg3: tensor<16xi32>):
        %3 = "arith.addi"(%arg2, %arg3) <{overflowFlags = #arith_overflow_mode}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
        "scf.yield"(%3) : (tensor<16xi32>) -> ()
    }) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    "tt.return"(%2) : (tensor<16xi32>) -> ()
  }) : () -> ()
}) : () -> ()