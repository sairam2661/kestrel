"builtin.module"() ({
  "util.func"() <{function_type = () -> tensor<4xi32>, sym_name = "cloneConstant", sym_visibility = "public", tied_operands = [-1 : index]}> ({
    %0 = "arith.constant"() <{value = dense<[0, 1, 2, 3]> : tensor<4xi32>}> : () -> tensor<4xi32>
    %1 = "flow.tensor.clone"(%0) : (tensor<4xi32>) -> tensor<4xi32>
    "util.return"(%1) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()

