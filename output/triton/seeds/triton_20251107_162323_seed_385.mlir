"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<32xi32>, tensor<32xi32>) -> (tensor<32xi32>), sym_name = "complex_op_sequence"}> ({
  ^bb0(%arg0: tensor<32xi32>, %arg1: tensor<32xi32>):
    %0 = "arith.constant"() <{value = dense<10> : tensor<32xi32>}> : () -> tensor<32xi32>
    %1 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith_overflownone}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %2 = "arith.subi"(%arg1, %0) <{overflowFlags = #arith_overflownone}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %3 = "arith.cmpi"(%1, %2) <{predicate = 0 : i64}> : (tensor<32xi32>, tensor<32xi32>) -> i1
    %4 = "scf.if"(%3) ({
      %5 = "arith.xori"(%1, %2) <{overflowFlags = #arith_overflownone}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
      "scf.yield"(%5) : (tensor<32xi32>) -> ()
    }, {
      %6 = "arith.select"(%3, %arg0, %arg1) : (i1, tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
      "scf.yield"(%6) : (tensor<32xi32>) -> ()
    }) : (i1) -> tensor<32xi32>
    "tt.return"(%4) : (tensor<32xi32>) -> ()
  }) : () -> ()
}) : () -> ()