"builtin.module"() ({
  "tt.func"() <{function_type = () -> i32, sym_name = "mixed_operations"}> ({
    %0 = "tt.make_range"() <{end = 64 : i32, start = 0 : i32}> : () -> tensor<64xi32>
    %1 = "arith.constant"() <{value = dense<2> : tensor<64xi32>}> : () -> tensor<64xi32>
    %2 = "arith.remsi"(%0, %1) <{overflowFlags = #arith_overflow_none}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %3 = "arith.xori"(%2, %1) <{overflowFlags = #arith_overflow_none}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %4 = "arith.constant"() <{value = dense<3> : tensor<64xi32>}> : () -> tensor<64xi32>
    %5 = "arith.divsi"(%3, %4) <{overflowFlags = #arith_overflow_none}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %6 = "arith.addi"(%5, %1) <{overflowFlags = #arith_overflow_none}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %7 = "tt.reduce"(%6) <{reductionOp = "tt.add", identityValue = dense<0> : tensor<1xi32>}> : (tensor<64xi32>) -> tensor<1xi32>
    %8 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %9:2 = "scf.if"(%8) ({
    ^bb0(%arg0: i32):
      %10 = "arith.addi"(%arg0, %8) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
      "scf.yield"(%10) : (i32) -> ()
    }) : (i32) -> (i32)
    "tt.return"(%9#0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()