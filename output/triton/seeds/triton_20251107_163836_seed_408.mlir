"builtin.module"() ({
  "tt.func"() <{function_type = (i32, tensor<4x4xi32>) -> tensor<4xi32>, sym_name = "fancy_reduce"}> ({
  ^bb0(%arg0: i32, %arg1: tensor<4x4xi32>):
    %0 = "tt.expand_dims"(%arg1) <{axis = 2 : i32}> : (tensor<4x4xi32>) -> tensor<4x4x1xi32>
    %1 = "tt.make_range"() <{end = 4 : i32, start = 0 : i32}> : () -> tensor<4xi32>
    %2 = "arith.addi"(%arg0, %1) <{overflowFlags = #arith_overflownone}> : (i32, tensor<4xi32>) -> tensor<4xi32>
    %3 = "arith.subi"(%0, %2) <{overflowFlags = #arith_overflownone}> : (tensor<4x4x1xi32>, tensor<4xi32>) -> tensor<4x4x1xi32>
    %4 = "tt.reduce"(%3) <{axis = 0 : i32}> ({
    ^bb0(%arg5: i32, %arg6: i32):
      %7 = "arith.addi"(%arg5, %arg6) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "tt.reduce.return"(%7) : (i32) -> ()
    }) : (tensor<4x4x1xi32>) -> tensor<4x1xi32>
    %8 = "tt.reduce"(%4) <{axis = 1 : i32}> ({
    ^bb0(%arg7: i32, %arg8: i32):
      %9 = "arith.addi"(%arg7, %arg8) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "tt.reduce.return"(%9) : (i32) -> ()
    }) : (tensor<4x1xi32>) -> tensor<1xi32>
    %10 = "tt.reduce"(%8) <{axis = 0 : i32}> ({
    ^bb0(%arg9: i32, %arg10: i32):
      %11 = "arith.addi"(%arg9, %arg10) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "tt.reduce.return"(%11) : (i32) -> ()
    }) : (tensor<1xi32>) -> tensor<1xi32>
    %12 = "tt.squeeze"(%10) <{axis = 0 : i32}> : (tensor<1xi32>) -> tensor<i32>
    "tt.return"(%12) : (tensor<i32>) -> ()
  }) : (i32, tensor<4x4xi32>) -> tensor<i32>
}) : () -> ()