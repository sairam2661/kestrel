"builtin.module"() ({
  "tt.func"() <{function_type = (i32, tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>, sym_name = "complex_control_flow"}> ({
  ^bb0(%arg0: i32, %arg1: tensor<16xi32>, %arg2: tensor<16xi32>):
    %0 = "arith.constant"() <{value = dense<1> : tensor<16xi32>}> : () -> tensor<16xi32>
    %1 = "arith.constant"() <{value = dense<2> : tensor<16xi32>}> : () -> tensor<16xi32>
    %2 = "arith.addi"(%arg1, %arg2) <{overflowFlags = #arith_overflow_flags}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %3 = "arith.muli"(%2, %0) <{overflowFlags = #arith_overflow_flags}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %4:2 = "scf.if"(%arg0) ({
      %5 = "arith.subi"(%arg1, %arg2) <{overflowFlags = #arith_overflow_flags}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      %6 = "arith.addi"(%5, %3) <{overflowFlags = #arith_overflow_flags}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      "scf.yield"(%6, %5) : (tensor<16xi32>, tensor<16xi32>) -> ()
    }, {
      %5 = "arith.muli"(%arg1, %2) <{overflowFlags = #arith_overflow_flags}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      "scf.yield"(%5, %arg1) : (tensor<16xi32>, tensor<16xi32>) -> ()
    }) : (i32) -> (tensor<16xi32>, tensor<16xi32>)
    %7 = "arith.cmpi"(%arg0, %4#0, "eq") : (i32, i32) -> i1
    %8:2 = "scf.if"(%7) ({
      %9 = "arith.addi"(%4#1, %arg2) <{overflowFlags = #arith_overflow_flags}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      "scf.yield"(%9, %4#1) : (tensor<16xi32>, tensor<16xi32>) -> ()
    }, {
      %9 = "arith.subi"(%4#1, %arg1) <{overflowFlags = #arith_overflow_flags}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      "scf.yield"(%9, %4#1) : (tensor<16xi32>, tensor<16xi32>) -> ()
    }) : (i1) -> (tensor<16xi32>, tensor<16xi32>)
    "tt.return"(%8#0) : (tensor<16xi32>) -> ()
  }) : () -> ()
}) : () -> ()