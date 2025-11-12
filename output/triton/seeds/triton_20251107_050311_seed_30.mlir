"builtin.module"() ({
  "tt.func"() <{function_type = (i32, tensor<8x1xf32>) -> tensor<8x1xf32>, sym_name = "mixed_types"}> ({
  ^bb0(%arg0: i32, %arg1: tensor<8x1xf32>):
    %0 = "arith.constant"() <{value = dense<2.000000e+00> : tensor<8x1xf32>}> : () -> tensor<8x1xf32>
    %1 = "arith.addi"(%arg0, %arg0) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
    %2 = "arith.divsi"(%arg0, %1) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
    %3 = "arith.muli"(%2, %2) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
    %4 = "arith.remsi"(%3, %arg0) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
    %5 = "arith.subi"(%arg0, %4) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
    %6 = "tt.make_range"(%5, %1, %0) : (i32, i32, tensor<8x1xf32>) -> tensor<8x1xf32>
    %7 = "tt.reduce"(%6) <{operation = "add"}> : (tensor<8x1xf32>) -> tensor<1xf32>
    %8 = "tt.expand_dims"(%7, %0) : (tensor<1xf32>, i32) -> tensor<8x1xf32>
    "tt.return"(%8) : (tensor<8x1xf32>) -> ()
  }) : () -> ()
}) : () -> ()