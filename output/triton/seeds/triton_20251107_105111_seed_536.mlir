"builtin.module"() ({
  "tt.func"() <{function_type = (i32, tensor<4xi32>) -> tensor<4xi32>, sym_name = "complex_op_sequence", sym_visibility = "public"}> ({
  ^bb0(%arg0: i32, %arg1: tensor<4xi32>):
    %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %1 = "arith.muli"(%arg0, %0) <{overflowFlags = #arith_overflow_flags}> : (i32, i32) -> i32
    %2 = "tt.make_range"(%1, %1) <{step = 1}> : (i32, i32) -> tensor<4xi32>
    %3 = "arith.addi"(%arg1, %2) <{overflowFlags = #arith_overflow_flags}> : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    %4 = "scf.if"(%arg0) ({
    ^bb0:
      %5 = "arith.subi"(%arg1, %2) <{overflowFlags = #arith_overflow_flags}> : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
      "scf.yield"(%5) : (tensor<4xi32>) -> tensor<4xi32>
    }) {
    } : (i32) -> tensor<4xi32>
    %6 = "arith.xori"(%arg1, %4) <{overflowFlags = #arith_overflow_flags}> : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    "tt.return"(%6) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()