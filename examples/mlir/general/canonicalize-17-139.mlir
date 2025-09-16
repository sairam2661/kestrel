"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<4x5x?xf32>, sym_name = "empty_canonicalize"}> ({
    %0 = "arith.constant"() <{value = 6 : index}> : () -> index
    %1 = "tensor.empty"(%0) : (index) -> tensor<4x5x?xf32>
    "func.return"(%1) : (tensor<4x5x?xf32>) -> ()
  }) : () -> ()
}) : () -> ()

