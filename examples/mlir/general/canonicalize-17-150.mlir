"builtin.module"() ({
  "func.func"() <{function_type = (tensor<*xf32>, tensor<?xi32>) -> index, sym_name = "dim_of_reshape_i32"}> ({
  ^bb0(%arg0: tensor<*xf32>, %arg1: tensor<?xi32>):
    %0 = "arith.constant"() <{value = 3 : index}> : () -> index
    %1 = "tensor.reshape"(%arg0, %arg1) : (tensor<*xf32>, tensor<?xi32>) -> tensor<*xf32>
    %2 = "tensor.dim"(%1, %0) : (tensor<*xf32>, index) -> index
    "func.return"(%2) : (index) -> ()
  }) : () -> ()
}) : () -> ()

