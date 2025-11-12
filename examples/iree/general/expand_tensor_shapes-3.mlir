"builtin.module"() ({
  "util.func"() <{function_type = (tensor<4x?x?x2xf32>, tensor<?xi32>) -> (tensor<4x?x?x2xf32>, tensor<?xi32>), sym_name = "funcResults", sym_visibility = "private", tied_operands = [-1 : index, -1 : index]}> ({
  ^bb0(%arg0: tensor<4x?x?x2xf32>, %arg1: tensor<?xi32>):
    "util.return"(%arg0, %arg1) : (tensor<4x?x?x2xf32>, tensor<?xi32>) -> ()
  }) : () -> ()
}) : () -> ()

