"builtin.module"() ({
  "util.func"() <{function_type = () -> (), sym_name = "splatConstant"}> ({
    %0 = "arith.constant"() <{value = dense<1> : tensor<512x128xi32>}> : () -> tensor<512x128xi32>
    %1 = "flow.tensor.constant"() <{value = dense<1> : tensor<512x128xi32>}> : () -> tensor<512x128xi32>
    "util.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

