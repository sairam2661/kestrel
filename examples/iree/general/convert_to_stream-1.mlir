"builtin.module"() ({
  "util.func"() <{function_type = (tensor<4x8xf32>) -> tensor<8x4xf32>, sym_name = "custom_ops", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: tensor<4x8xf32>):
    %0 = "some.op"(%arg0) : (tensor<4x8xf32>) -> tensor<8x4xf32>
    "util.return"(%0) : (tensor<8x4xf32>) -> ()
  }) : () -> ()
}) : () -> ()

