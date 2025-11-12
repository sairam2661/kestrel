"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<4x4xf32>) -> (tensor<4x4xf32>), sym_name = "custom_reduce_and_expand"}> ({
  ^bb0(%arg0: tensor<4x4xf32>):
    %0 = "tt.reduce"(%arg0) <{axis = 1 : i32}> ({
    ^bb1(%arg1: f32, %arg2: f32):
      %1 = "arith.addf"(%arg1, %arg2) <{fastmath = #arith_fastmathattrs}> : (f32, f32) -> f32
      "tt.reduce.return"(%1) : (f32) -> ()
    }) : (tensor<4x4xf32>) -> tensor<4xf32>
    %2 = "tt.expand_dims"(%0, 1) : (tensor<4xf32>, i32) -> tensor<4x1xf32>
    "tt.return"(%2) : (tensor<4x1xf32>) -> ()
  }) : () -> ()
}) : () -> ()