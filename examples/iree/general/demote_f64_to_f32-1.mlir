"builtin.module"() ({
  "util.func"() <{function_type = (tensor<4x4xf64>) -> tensor<4x4xf64>, sym_name = "tensorTypesF64", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: tensor<4x4xf64>):
    "util.return"(%arg0) : (tensor<4x4xf64>) -> ()
  }) : () -> ()
}) : () -> ()

