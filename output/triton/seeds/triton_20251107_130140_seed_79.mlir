"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16x16xi32>, tensor<16x16xi32>) -> tensor<16x16xi32>, sym_name = "tensor_computation"}> ({
  ^bb0(%arg0: tensor<16x16xi32>, %arg1: tensor<16x16xi32>):
    %0 = "tt.make_range"() <{end = 16 : i32, start = 0 : i32}> : () -> tensor<16xi32>
    %1 = "tt.expand_dims"(%0, %0) : (tensor<16xi32>, i32) -> tensor<16x16xi32>
    %2 = "arith.addi"(%arg0, %arg1) : (tensor<16x16xi32>, tensor<16x16xi32>) -> tensor<16x16xi32>
    %3 = "arith.subi"(%arg0, %arg1) : (tensor<16x16xi32>, tensor<16x16xi32>) -> tensor<16x16xi32>
    %4 = "tt.reduce"(%2, %3) <{operation = #arithadd}> : (tensor<16x16xi32>, tensor<16x16xi32>) -> tensor<16x16xi32>
    %5 = "tt.make_range"() <{end = 32 : i32, start = 16 : i32}> : () -> tensor<16xi32>
    %6 = "tt.expand_dims"(%5, %0) : (tensor<16xi32>, i32) -> tensor<16x16xi32>
    %7 = "arith.muli"(%3, %6) : (tensor<16x16xi32>, tensor<16x16xi32>) -> tensor<16x16xi32>
    "tt.return"(%7) : (tensor<16x16xi32>) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 2 : i32, "ttg.num-warps" = 8 : i32, "ttg.threads-per-warp" = 32 : i32} : () -> ()