"builtin.module"() ({
  "tt.func"() <{function_type = (i32, tensor<8x8xi32>) -> i32, sym_name = "complex_op_chain"}> ({
  ^bb0(%arg0: i32, %arg1: tensor<8x8xi32>):
    %0 = "tt.make_range"() <{end = 8 : i32, start = 0 : i32}> : () -> tensor<8xi32>
    %1 = "tt.expand_dims"(%0, %arg0) <{axis = 0 : i32}> : (tensor<8xi32>, i32) -> tensor<8x8xi32>
    %2 = "arith.addi"(%arg1, %1) <{overflowFlags = #arith_overflownone}> : (tensor<8x8xi32>, tensor<8x8xi32>) -> tensor<8x8xi32>
    %3 = "tt.reduce"(%2) <{axis = 1 : i32}> ({
    ^bb1(%arg3: i32, %arg4: i32):
      %5 = "arith.addi"(%arg3, %arg4) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "tt.reduce.return"(%5) : (i32) -> ()
    }) : (tensor<8x8xi32>) -> tensor<8xi32>
    %6 = "tt.reduce"(%3) <{axis = 0 : i32}> ({
    ^bb2(%arg5: i32, %arg6: i32):
      %7 = "arith.addi"(%arg5, %arg6) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "tt.reduce.return"(%7) : (i32) -> ()
    }) : (tensor<8xi32>) -> i32
    "tt.return"(%6) : (i32) -> ()
  }) : () -> ()
}) : () -> ()