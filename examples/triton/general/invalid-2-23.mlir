"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<2xf32>) -> (), sym_name = "fn", sym_visibility = "public"}> ({
  ^bb0(%arg0: tensor<2xf32>):
    %0:2 = "tt.split"(%arg0) : (tensor<2xf32>) -> (tensor<f32>, tensor<f32>)
    "tt.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

