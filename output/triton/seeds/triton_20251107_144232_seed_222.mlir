"builtin.module"() ({
  "tt.func"() <{function_type = (i32, tensor<16xi32>) -> (i32, tensor<16xi32>), sym_name = "complex_op_sequence"}> ({
    ^bb0(%arg0: i32, %arg1: tensor<16xi32>):
      %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
      %1 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
      %2 = "arith.constant"() <{value = 10 : i32}> : () -> i32
      %3 = "arith.muli"(%1, %2) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
      %4 = "tt.make_range"() <{end = 16 : i32, start = 0 : i32}> : () -> tensor<16xi32>
      %5 = "tt.addptr"(%arg1, %3) : (!tt_ptr_i32, i32) -> !tt_ptr_i32
      %6 = "tt.expand_dims"(%5, 0) : (!tt_ptr_i32) -> tensor<1x16xi32>
      %7 = "arith.constant"() <{value = dense<2> : tensor<1x16xi32>}> : () -> tensor<1x16xi32>
      %8 = "arith.muli"(%6, %7) <{overflowFlags = #arith_overflow_none}> : (tensor<1x16xi32>, tensor<1x16xi32>) -> tensor<1x16xi32>
      %9 = "tt.reduce"() <{operation = "#tt.add"}> ({
        ^bb1(%arg2: tensor<1x16xi32>):
          %10 = "arith.remsi"(%arg2, %3) <{overflowFlags = #arith_overflow_none}> : (tensor<1x16xi32>, i32) -> tensor<1x16xi32>
          %11 = "arith.xori"(%arg2, %10) <{overflowFlags = #arith_overflow_none}> : (tensor<1x16xi32>, tensor<1x16xi32>) -> tensor<1x16xi32>
          "scf.yield"(%11) : (tensor<1x16xi32>) -> ()
      }) : (tensor<1x16xi32>) -> tensor<1x16xi32>
      "tt.return"(%9, %8) : (tensor<1x16xi32>, tensor<1x16xi32>) -> ()
  }) : () -> ()
}) : () -> ()