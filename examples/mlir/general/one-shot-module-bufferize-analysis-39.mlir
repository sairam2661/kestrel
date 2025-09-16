"builtin.module"() ({
  "func.func"() <{arg_attrs = [{bufferization.access = "read"}], function_type = (tensor<*xf32>) -> (), sym_name = "print_buffer", sym_visibility = "private"}> ({
  }) : () -> ()
  "func.func"() <{function_type = (tensor<5xf32>) -> f32, sym_name = "private_func_read"}> ({
  ^bb0(%arg0: tensor<5xf32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "tensor.cast"(%arg0) : (tensor<5xf32>) -> tensor<*xf32>
    "func.call"(%1) <{callee = @print_buffer}> : (tensor<*xf32>) -> ()
    %2 = "tensor.extract"(%arg0, %0) : (tensor<5xf32>, index) -> f32
    "func.return"(%2) : (f32) -> ()
  }) : () -> ()
}) : () -> ()

