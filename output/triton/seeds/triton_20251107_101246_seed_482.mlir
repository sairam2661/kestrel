"builtin.module"() ({
  "tt.func"() <{function_type = (i32, tensor<32xi32>, tensor<32xi32>) -> (tensor<32xi32>), sym_name = "mixed_ops"}> ({
  ^bb0(%arg0: i32, %arg1: tensor<32xi32>, %arg2: tensor<32xi32>):
    %0 = "arith.constant"() <{value = dense<10> : tensor<32xi32>}> : () -> tensor<32xi32>
    %1 = "arith.addi"(%arg1, %0) <{overflowFlags = #arith_overflow_modewrap}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %2 = "arith.divsi"(%1, %arg2) <{overflowFlags = #arith_overflow_modewrap}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %3 = "arith.xori"(%2, %arg1) <{overflowFlags = #arith_overflow_modewrap}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %4 = "arith.subi"(%arg2, %arg1) <{overflowFlags = #arith_overflow_modewrap}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %5:2 = "scf.if"(%arg0) ({
      %6 = "arith.muli"(%1, %4) <{overflowFlags = #arith_overflow_modewrap}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
      %7 = "arith.addi"(%4, %0) <{overflowFlags = #arith_overflow_modewrap}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
      "scf.yield"(%6, %7) : (tensor<32xi32>, tensor<32xi32>) -> ()
    }, {
      %8 = "arith.subi"(%3, %4) <{overflowFlags = #arith_overflow_modewrap}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
      %9 = "arith.xori"(%8, %arg1) <{overflowFlags = #arith_overflow_modewrap}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
      "scf.yield"(%3, %9) : (tensor<32xi32>, tensor<32xi32>) -> ()
    }) : (i32) -> (tensor<32xi32>, tensor<32xi32>)
    "tt.return"(%5#0) : (tensor<32xi32>) -> ()
  }) : () -> ()
}) : () -> ()