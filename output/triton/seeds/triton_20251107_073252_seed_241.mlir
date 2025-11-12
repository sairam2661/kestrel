"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16x16xf32>, tensor<16x16xf32>) -> tensor<16x16xf32>, sym_name = "scatter_add"}> ({
  ^bb0(%arg0: tensor<16x16xf32>, %arg1: tensor<16x16xf32>):
    %c0_i32 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %c1_i32 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %c16_i32 = "arith.constant"() <{value = 16 : i32}> : () -> i32
    %c1_f32 = "arith.constant"() <{value = 1.0 : f32}> : () -> f32

    %indices = "tt.make_range"() <{end = 16 : i32, start = 0 : i32}> : () -> tensor<16xi32>
    %ones = "arith.constant"() <{value = dense<1> : tensor<16xi32>}> : () -> tensor<16xi32>

    %scatter_indices = "arith.muli"(%indices, %c16_i32) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, i32) -> tensor<16xi32>

    %scatter_result = "tt.scatter_add"(%arg0, %scatter_indices, %arg1) : (tensor<16x16xf32>, tensor<16xi32>, tensor<16x16xf32>) -> tensor<16x16xf32>

    "tt.return"(%scatter_result) : (tensor<16x16xf32>) -> ()
  }) : () -> ()
}) {"ttg.num-warps" = 4 : i32} : () -> ()