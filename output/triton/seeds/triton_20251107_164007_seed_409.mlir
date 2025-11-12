"builtin.module"() ({
  "tt.func"() <{function_type = (i32, tensor<8xi32>) -> (), sym_name = "complex_op_seq"}> ({
  ^bb0(%arg0: i32, %arg1: tensor<8xi32>):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "tt.make_range"() <{end = 8 : i32, start = 0 : i32}> : () -> tensor<8xi32>
    %2 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith_overflowFlags}> : (i32, i32) -> i32
    %3 = "tt.splat"(%2) : (i32) -> tensor<8xi32>
    %4 = "arith.xori"(%arg1, %3) <{overflowFlags = #arith_overflowFlags}> : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    %5 = "arith.muli"(%arg1, %4) <{overflowFlags = #arith_overflowFlags}> : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    %6 = "arith.divsi"(%5, %3) <{overflowFlags = #arith_overflowFlags}> : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    %7 = "arith.select"(%6, %4, %3) : (tensor<8xi32>, tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    %8 = "tt.expand_dims"(%7) <{axis = 1 : i32}> : (tensor<8xi32>) -> tensor<8x1xi32>
    "tt.return"() : () -> ()
  }) : () -> ()
}) : () -> ()