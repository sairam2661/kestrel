"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>, sym_name = "vector_add_with_if"}> ({
  ^bb0(%arg0: tensor<32xi32>, %arg1: tensor<32xi32>):
    %0 = "arith.constant"() <{value = dense<2> : tensor<32xi32>}> : () -> tensor<32xi32>
    %1 = "scf.if"(%0) ({
      %2 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflow_none}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
      "scf.yield"(%2) : (tensor<32xi32>) -> ()
    }, {
      %3 = "arith.subi"(%arg0, %arg1) <{overflowFlags = #arith_overflow_none}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
      "scf.yield"(%3) : (tensor<32xi32>) -> ()
    }) : (tensor<32xi32>) -> tensor<32xi32>
    "tt.return"(%1) : (tensor<32xi32>) -> ()
  }) : () -> ()
}) : () -> ()