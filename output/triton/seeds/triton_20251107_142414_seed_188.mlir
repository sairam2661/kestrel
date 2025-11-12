"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>, sym_name = "complex_op_sequence"}> ({
  ^bb0(%arg0: tensor<16xi32>, %arg1: tensor<16xi32>):
    %0 = "arith.addi"(%arg0, %arg1) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %1 = "arith.muli"(%arg0, %arg1) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %2 = "arith.constant"() <{value = dense<5> : tensor<16xi32>}> : () -> tensor<16xi32>
    %3 = "arith.subi"(%1, %2) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %4 = "scf.if"(%arg0) ({
      %5 = "arith.shli"(%arg1, %2) <{overflowFlags = #arith_overflow_flags}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      "scf.yield"(%5) : (tensor<16xi32>) -> ()
    }, {
      %6 = "arith.shrsi"(%arg1, %2) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      "scf.yield"(%6) : (tensor<16xi32>) -> ()
    }) {tt.latency = 2 : i32} : (tensor<16xi32>) -> tensor<16xi32>
    %7 = "scf.for"(%0, %arg0, %arg1) ({
    ^bb1(%arg2: tensor<16xi32>):
      %8 = "tt.splat"(%arg2) : (tensor<16xi32>) -> tensor<16xi32>
      %9 = "arith.addi"(%8, %arg2) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      "scf.yield"(%9) : (tensor<16xi32>) -> ()
    }) {tt.num_stages = 3 : i32} : (tensor<16xi32>, tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    "tt.return"(%7) : (tensor<16xi32>) -> ()
  }) : () -> ()
}) : () -> ()