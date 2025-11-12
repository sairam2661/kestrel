"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<3xi32>, tensor<3xi32>) -> tensor<3xi32>, sym_name = "complex_reduce_and_expand"}> ({
  ^bb0(%arg0: tensor<3xi32>, %arg1: tensor<3xi32>):
    %0 = "arith.subi"(%arg0, %arg1) <{overflowFlags = #arithoverflownone}> : (tensor<3xi32>, tensor<3xi32>) -> tensor<3xi32>
    %1 = "tt.reduce"(%0) <{axis = 0 : i32}> ({
    ^bb0(%arg2: i32, %arg3: i32):
      %4 = "arith.addi"(%arg2, %arg3) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
      "tt.reduce.return"(%4) : (i32) -> ()
    }) : (tensor<3xi32>) -> tensor<1xi32>
    %5 = "tt.expand_dims"(%1) <{axis = 1 : i32}> : (tensor<1xi32>) -> tensor<1x1xi32>
    %6 = "tt.expand_dims"(%5) <{axis = 2 : i32}> : (tensor<1x1xi32>) -> tensor<1x1x1xi32>
    "tt.return"(%6) : (tensor<1x1x1xi32>) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 4 : i32} : () -> ()