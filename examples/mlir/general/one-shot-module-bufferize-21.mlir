"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "main"}> ({
    %0 = "arith.constant"() <{value = dense<[1.000000e+00, 2.000000e+00, 3.000000e+00]> : tensor<3xf32>}> : () -> tensor<3xf32>
    %1 = "tensor.cast"(%0) : (tensor<3xf32>) -> tensor<*xf32>
    "func.call"(%1) <{callee = @maybe_writing_func}> : (tensor<*xf32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<*xf32>) -> (), sym_name = "maybe_writing_func", sym_visibility = "private"}> ({
  }) : () -> ()
}) : () -> ()

