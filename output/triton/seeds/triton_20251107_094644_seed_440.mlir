"builtin.module"() ({
  "tt.func"() <{function_type = (i32, tensor<3x3xi32>) -> (i32, tensor<3x3xi32>), sym_name = "complex_loop_with_tensor", sym_visibility = "public"}> ({
  ^bb0(%arg0: i32, %arg1: tensor<3x3xi32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 3 : index}> : () -> index
    %2 = "arith.constant"() <{value = 1 : index}> : () -> index
    %3:2 = "scf.for"(%0, %1, %2, %arg0, %arg1) ({
    ^bb0(%arg2: index, %arg3: i32, %arg4: tensor<3x3xi32>):
      %5 = "arith.addi"(%arg3, %arg2) <{overflowFlags = #arith_overflownone}> : (i32, index) -> i32
      %6 = "arith.constant"() <{value = 1 : i32}> : () -> i32
      %7 = "tt.make_range"() <{start = 0 : i32, end = 3 : i32}> : () -> tensor<3xi32>
      %8 = "tt.expand_dims"(%7, 0) : (tensor<3xi32>) -> tensor<1x3xi32>
      %9 = "tt.expand_dims"(%8, 1) : (tensor<1x3xi32>) -> tensor<1x3x1xi32>
      "scf.yield"(%5, %9) : (i32, tensor<1x3x1xi32>) -> ()
    }) : (index, index, index, i32, tensor<3x3xi32>) -> (i32, tensor<1x3x1xi32>)
    "tt.return"(%3#0, %3#1) : (i32, tensor<1x3x1xi32>) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 4 : i32} : () -> ()