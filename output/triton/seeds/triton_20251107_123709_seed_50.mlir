"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>, sym_name = "complex_op"}> ({
  ^bb0(%arg0: tensor<32xi32>, %arg1: tensor<32xi32>):
    %0 = "arith.constant"() <{value = dense<1> : tensor<32xi32>}> : () -> tensor<32xi32>
    %1 = "arith.muli"(%arg0, %0) <{overflowFlags = #arith_overflow_NONE}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %2 = "arith.xori"(%1, %arg1) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %3 = "arith.subi"(%arg0, %2) <{overflowFlags = #arith_overflow_NONE}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %4 = "arith.cmpi"(%3, %0) <{predicate = 2}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi1>
    %5 = "scf.if"(%4) ({
      %6 = "arith.muli"(%arg0, %arg1) <{overflowFlags = #arith_overflow_NONE}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
      "scf.yield"(%6) : (tensor<32xi32>) -> ()
    }, {
      "scf.yield"(%arg1) : (tensor<32xi32>) -> ()
    }) : (tensor<32xi1>) -> tensor<32xi32>
    "tt.return"(%5) : (tensor<32xi32>) -> ()
  }) : () -> ()
}) : () -> ()