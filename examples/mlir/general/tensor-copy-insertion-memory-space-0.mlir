"builtin.module"() ({
  "func.func"() <{function_type = () -> (tensor<10xf32>, tensor<10xf32>), sym_name = "unknown_op_copy"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %2 = "test.dummy_op"() : () -> tensor<10xf32>
    %3 = "tensor.insert"(%1, %2, %0) : (f32, tensor<10xf32>, index) -> tensor<10xf32>
    "func.return"(%3, %2) : (tensor<10xf32>, tensor<10xf32>) -> ()
  }) : () -> ()
}) : () -> ()

