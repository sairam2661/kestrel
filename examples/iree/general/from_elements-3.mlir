"builtin.module"() ({
  "util.func"() <{function_type = (f32, f32, f32, f32, f32, f32) -> tensor<2x3xf32>, sym_name = "tensor.from_elements_2D", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: f32, %arg1: f32, %arg2: f32, %arg3: f32, %arg4: f32, %arg5: f32):
    %0 = "tensor.from_elements"(%arg0, %arg1, %arg2, %arg3, %arg4, %arg5) : (f32, f32, f32, f32, f32, f32) -> tensor<2x3xf32>
    "util.return"(%0) : (tensor<2x3xf32>) -> ()
  }) : () -> ()
}) : () -> ()

