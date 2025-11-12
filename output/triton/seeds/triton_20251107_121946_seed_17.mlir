"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>, sym_name = "complex_op"}> ({
  ^bb0(%arg0: tensor<64xi32>, %arg1: tensor<64xi32>):
    %0 = "tt.make_range"() <{end = 64 : i32, start = 0 : i32}> : () -> tensor<64xi32>
    %1 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %2 = "arith.subi"(%0, %1) <{overflowFlags = #arith_overflownone}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %3 = "tt.expand_dims"(%2) <{axis = 0 : i32}> : (tensor<64xi32>) -> tensor<1x64xi32>
    %4 = "tt.reduce"(%3) <{operation = #tt_reducemax}> : (tensor<1x64xi32>) -> tensor<64xi32>
    "tt.return"(%4) : (tensor<64xi32>) -> ()
  }) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 4 : i32} : () -> ()