"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?xf32>) -> (tensor<?xf32>, f32), sym_name = "inner_func"}> ({
  ^bb0(%arg1: tensor<?xf32>):
    %1 = "arith.constant"() <{value = 1.000000e+00 : f32}> : () -> f32
    %2 = "arith.constant"() <{value = 0 : index}> : () -> index
    %3 = "arith.constant"() <{value = 1 : index}> : () -> index
    %4 = "tensor.insert"(%1, %arg1, %2) : (f32, tensor<?xf32>, index) -> tensor<?xf32>
    %5 = "tensor.extract"(%4, %3) : (tensor<?xf32>, index) -> f32
    "func.return"(%4, %5) : (tensor<?xf32>, f32) -> ()
  }) : () -> ()
  "func.func"() <{arg_attrs = [{bufferization.writable = false}], function_type = (tensor<?xf32>) -> (f32, tensor<?xf32>), sym_name = "call_func_with_non_tensor_return"}> ({
  ^bb0(%arg0: tensor<?xf32>):
    %0:2 = "func.call"(%arg0) <{callee = @inner_func}> : (tensor<?xf32>) -> (tensor<?xf32>, f32)
    "func.return"(%0#1, %0#0) : (f32, tensor<?xf32>) -> ()
  }) : () -> ()
}) : () -> ()

