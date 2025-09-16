"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?xf32>) -> (tensor<5xf32>, tensor<6xf32>), sym_name = "ext_func", sym_visibility = "private"}> ({
  }) : () -> ()
  "func.func"() <{function_type = (tensor<?xf32>) -> f32, sym_name = "private_func_aliasing"}> ({
  ^bb0(%arg0: tensor<?xf32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1:2 = "func.call"(%arg0) <{callee = @ext_func}> : (tensor<?xf32>) -> (tensor<5xf32>, tensor<6xf32>)
    %2 = "tensor.extract"(%1#1, %0) : (tensor<6xf32>, index) -> f32
    "func.return"(%2) : (f32) -> ()
  }) : () -> ()
}) : () -> ()

