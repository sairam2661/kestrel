"builtin.module"() ({
  "func.func"() <{function_type = (tensor<9xf32>) -> f32, sym_name = "extract_from_tensor.cast"}> ({
  ^bb0(%arg0: tensor<9xf32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "tensor.cast"(%arg0) : (tensor<9xf32>) -> tensor<?xf32>
    %2 = "tensor.extract"(%1, %0) : (tensor<?xf32>, index) -> f32
    "func.return"(%2) : (f32) -> ()
  }) : () -> ()
}) : () -> ()

