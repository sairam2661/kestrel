"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<8x8xi32>, tensor<8x8xi32>) -> tensor<8x8xi32>, sym_name = "matrix_multiply"}> ({
  ^bb0(%arg0: tensor<8x8xi32>, %arg1: tensor<8x8xi32>):
    %0 = "tt.make_range"() <{end = 8 : i32, start = 0 : i32}> : () -> tensor<8xi32>
    %1 = "tt.splat"(%arg0) : (tensor<8x8xi32>) -> tensor<8x8x8xi32>
    %2 = "tt.splat"(%arg1) : (tensor<8x8xi32>) -> tensor<8x8x8xi32>
    %3 = "arith.muli"(%1, %2) <{overflowFlags = #arith_overflownone}> : (tensor<8x8x8xi32>, tensor<8x8x8xi32>) -> tensor<8x8x8xi32>
    %4 = "tt.reduce"(%3, %0, "arith.addi"  ) : (tensor<8x8x8xi32>, tensor<8xi32>, !tthands_on) -> tensor<8x8xi32>
    "tt.return"(%4) : (tensor<8x8xi32>) -> ()
  }) : () -> ()
}) : () -> ()