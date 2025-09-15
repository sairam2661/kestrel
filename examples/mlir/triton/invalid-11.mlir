"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<f32>, tensor<f32>) -> (), sym_name = "fn", sym_visibility = "public"}> ({
  ^bb0(%arg0: tensor<f32>, %arg1: tensor<f32>):
    %0 = "tt.join"(%arg0, %arg1) : (tensor<f32>, tensor<f32>) -> tensor<2xf32>
    "tt.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

