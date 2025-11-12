"builtin.module"() ({
  "util.func"() <{function_type = () -> tensor<4x2xi32>, sym_name = "tensorConstantStatic", sym_visibility = "public", tied_operands = [-1 : index]}> ({
    %0 = "flow.tensor.constant"() <{value = dense<2> : tensor<4x2xi32>}> : () -> tensor<4x2xi32>
    "util.return"(%0) : (tensor<4x2xi32>) -> ()
  }) : () -> ()
}) : () -> ()

