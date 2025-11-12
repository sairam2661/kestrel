"builtin.module"() ({
  "tt.func"() <{function_type = (i32, tensor<16xi32>, tensor<16xi32>) -> (tensor<16xi32>, tensor<16xi32>), sym_name = "mixed_ops"}> ({
  ^bb0(%arg0: i32, %arg1: tensor<16xi32>, %arg2: tensor<16xi32>):
    %0 = "arith.constant"() <{value = dense<7> : tensor<16xi32>}> : () -> tensor<16xi32>
    %1 = "arith.subi"(%arg1, %0) <{overflowFlags = #arith_overflow_none}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %2 = "arith.addi"(%arg2, %0) <{overflowFlags = #arith_overflow_none}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %3:2 = "scf.if"(%arg0) ({
      %4 = "arith.muli"(%1, %arg2) <{overflowFlags = #arith_overflow_none}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      %5 = "arith.subi"(%4, %0) <{overflowFlags = #arith_overflow_none}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      "scf.yield"(%4, %5) : (tensor<16xi32>, tensor<16xi32>) -> ()
    }, {
      %6 = "arith.addi"(%1, %2) <{overflowFlags = #arith_overflow_none}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      "scf.yield"(%1, %6) : (tensor<16xi32>, tensor<16xi32>) -> ()
    }) : (i32) -> (tensor<16xi32>, tensor<16xi32>)
    "tt.return"(%3#0, %3#1) : (tensor<16xi32>, tensor<16xi32>) -> ()
  }) : () -> ()
}) : () -> ()