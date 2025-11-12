"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>, sym_name = "complex_op_sequence"}> ({
    ^bb0(%arg0: tensor<16xi32>, %arg1: tensor<16xi32>):
      %0 = "arith.constant"() <{value = dense<2> : tensor<16xi32>}> : () -> tensor<16xi32>
      %1 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      %2 = "arith.muli"(%1, %0) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      %3 = "arith.remsi"(%2, %arg0) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      %4 = "arith.remsi"(%arg1, %3) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      %5 = "arith.divsi"(%2, %arg0) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      %6 = "arith.xori"(%5, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      %7 = "scf.if"(%6) ({
        %8 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
        "scf.yield"(%8) : (tensor<16xi32>) -> ()
      }, {
        %9 = "arith.subi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
        "scf.yield"(%9) : (tensor<16xi32>) -> ()
      }) : (tensor<16xi32>) -> tensor<16xi32>
      "tt.return"(%7) : (tensor<16xi32>) -> ()
  }) : () -> ()
}) : () -> ()