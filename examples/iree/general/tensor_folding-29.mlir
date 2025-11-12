"builtin.module"() ({
  "util.func"() <{function_type = (f32, index) -> tensor<0x?xf32>, sym_name = "splatDynamicZeroElements", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: f32, %arg1: index):
    %0 = "flow.tensor.splat"(%arg0, %arg1) : (f32, index) -> tensor<0x?xf32>
    "util.return"(%0) : (tensor<0x?xf32>) -> ()
  }) : () -> ()
}) : () -> ()

