"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<64xi1>, tensor<64xi32>, tensor<64xi32>) -> (tensor<64xi32>), sym_name = "complex_if"}> ({
  ^bb0(%arg0: tensor<64xi1>, %arg1: tensor<64xi32>, %arg2: tensor<64xi32>):
    %0 = "scf.if"(%arg0) ({
      %1 = "arith.addi"(%arg1, %arg2) <{overflowFlags = #arith_overflow_flags}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
      "scf.yield"(%1) : (tensor<64xi32>) -> ()
    }, {
      %2 = "arith.subi"(%arg1, %arg2) <{overflowFlags = #arith_overflow_flags}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
      "scf.yield"(%2) : (tensor<64xi32>) -> ()
    }) : (tensor<64xi1>) -> tensor<64xi32>
    %3 = "scf.if"(%arg0) ({
      %4 = "arith.mul"(%0, %arg2) <{overflowFlags = #arith_overflow_flags}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
      "scf.yield"(%4) : (tensor<64xi32>) -> ()
    }, {
      %5 = "arith.divsi"(%arg1, %arg2) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
      "scf.yield"(%5) : (tensor<64xi32>) -> ()
    }) : (tensor<64xi1>) -> tensor<64xi32>
    "tt.return"(%3) : (tensor<64xi32>) -> ()
  }) : () -> ()
}) : () -> ()