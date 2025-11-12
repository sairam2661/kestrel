"builtin.module"() ({
  "util.func"() <{function_type = (f32) -> tensor<f32>, sym_name = "tensor.from_elements_0D", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: f32):
    %0 = "tensor.from_elements"(%arg0) : (f32) -> tensor<f32>
    "util.return"(%0) : (tensor<f32>) -> ()
  }) : () -> ()
}) : () -> ()

