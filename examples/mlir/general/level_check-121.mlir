"builtin.module"() ({
  "func.func"() <{function_type = (tensor<536870912x8x16xf32>) -> (tensor<536870912x8x9xf32>, tensor<536870912x8x9xf32>), sym_name = "test_rfft2d_tensor_size_invalid"}> ({
  ^bb0(%arg0: tensor<536870912x8x16xf32>):
    %0:2 = "tosa.rfft2d"(%arg0) : (tensor<536870912x8x16xf32>) -> (tensor<536870912x8x9xf32>, tensor<536870912x8x9xf32>)
    "func.return"(%0#0, %0#1) : (tensor<536870912x8x9xf32>, tensor<536870912x8x9xf32>) -> ()
  }) : () -> ()
}) : () -> ()

