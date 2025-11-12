"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16xi32>, tensor<16xi32>) -> (tensor<16xi32>), sym_name = "complex_op_sequence"}> ({
    ^bb0(%arg0: tensor<16xi32>, %arg1: tensor<16xi32>):
      %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      %1 = "arith.remsi"(%0, %arg0) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      %2 = "arith.divsi"(%0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      %3 = "arith.select"(%arg0, %1, %2) : (tensor<16xi32>, tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      %4 = "scf.if"(%arg0) ({
      ^bb1(%arg2: tensor<16xi32>):
        %5 = "arith.subi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
        "scf.yield"(%5) : (tensor<16xi32>) -> ()
      }, {
      ^bb2(%arg3: tensor<16xi32>):
        "scf.yield"(%arg0) : (tensor<16xi32>) -> ()
      }) : (tensor<16xi32>) -> tensor<16xi32>
      "tt.return"(%3) : (tensor<16xi32>) -> ()
  }) : () -> ()
}) : () -> ()