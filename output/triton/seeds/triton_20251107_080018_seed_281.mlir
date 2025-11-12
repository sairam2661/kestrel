"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<2x3x4xi32>, i32, i32) -> tensor<2x3x4xi32>, sym_name = "mixed_reduce_and_select", sym_visibility = "public"}> ({
    ^bb0(%arg0: tensor<2x3x4xi32>, %arg1: i32, %arg2: i32):
      %0 = "arith.constant"() <{value = 4 : i32}> : () -> i32
      %1 = "tt.make_range"(%0) <{start = 0 : i32, end = 16 : i32, step = 1 : i32}> : (i32) -> tensor<16xi32>
      %2 = "tt.expand_dims"(%1, %0) <{axis = 0}> : (tensor<16xi32>, i32) -> tensor<1x16xi32>
      %3 = "tt.expand_dims"(%2, %0) <{axis = 0}> : (tensor<1x16xi32>, i32) -> tensor<1x1x16xi32>
      %4 = "tt.expand_dims"(%3, %0) <{axis = 0}> : (tensor<1x1x16xi32>, i32) -> tensor<1x1x1x16xi32>
      %5 = "arith.constant"() <{value = dense<0> : tensor<2x3x4xi32>}> : () -> tensor<2x3x4xi32>
      %6 = "tt.reduce"(%arg0, %5) <{operation = "add", axis = 0}> : (tensor<2x3x4xi32>, tensor<2x3x4xi32>) -> tensor<2x3x4xi32>
      %7 = "tt.reduce"(%6, %5) <{operation = "add", axis = 1}> : (tensor<2x3x4xi32>, tensor<2x3x4xi32>) -> tensor<2x3x4xi32>
      %8 = "tt.reduce"(%7, %5) <{operation = "add", axis = 2}> : (tensor<2x3x4xi32>, tensor<2x3x4xi32>) -> tensor<2x3x4xi32>
      %9 = "arith.cmpi"(%8, %arg1) <{predicate = 8 : i64}> : (tensor<2x3x4xi32>, i32) -> tensor<2x3x4xi1>
      %10 = "arith.select"(%9, %arg0, %5) : (tensor<2x3x4xi1>, tensor<2x3x4xi32>, tensor<2x3x4xi32>) -> tensor<2x3x4xi32>
      "tt.return"(%10) : (tensor<2x3x4xi32>) -> ()
  }) : () -> ()
}) : () -> ()