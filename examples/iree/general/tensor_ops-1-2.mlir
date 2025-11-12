"builtin.module"() ({
  "util.func"() <{function_type = () -> tensor<?x?xi32>, sym_name = "tensorConstantDynamic", sym_visibility = "public", tied_operands = [-1 : index]}> ({
    %0 = "flow.tensor.dynamic_constant"() <{value = dense<2> : tensor<2x4xi32>}> : () -> tensor<?x?xi32>
    "util.return"(%0) : (tensor<?x?xi32>) -> ()
  }) : () -> ()
}) : () -> ()

