"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>, sym_name = "complex_computation"}> ({
  ^bb0(%arg0: tensor<32xi32>, %arg1: tensor<32xi32>):
    %0 = "arith.constant"() <{value = dense<2> : tensor<32xi32>}> : () -> tensor<32xi32>
    %1 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %2 = "arith.muli"(%1, %0) <{overflowFlags = #arith_overflownone}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %3 = "arith.divsi"(%2, %arg0) <{overflowFlags = #arith_overflownone}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %4 = "arith.cmpi"(%3, %arg1) <{predicate = 0 : i64}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi1>
    %5 = "scf.if"(%4) ({
      %6 = "arith.xori"(%arg0, %arg1) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
      "scf.yield"(%6) : (tensor<32xi32>) -> ()
    }, {
      %7 = "arith.subi"(%arg0, %arg1) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
      "scf.yield"(%7) : (tensor<32xi32>) -> ()
    }) : (tensor<32xi1>) -> tensor<32xi32>
    "tt.return"(%5) : (tensor<32xi32>) -> ()
  }) : () -> ()
}) : () -> ()