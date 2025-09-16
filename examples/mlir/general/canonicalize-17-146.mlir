"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<4x5x?xf32>, sym_name = "invalid_empty_negative_size"}> ({
    %0 = "arith.constant"() <{value = 1 : index}> : () -> index
    %1 = "arith.constant"() <{value = 2 : index}> : () -> index
    %2 = "index.sub"(%0, %1) : (index, index) -> index
    %3 = "tensor.empty"(%2) : (index) -> tensor<4x5x?xf32>
    "func.return"(%3) : (tensor<4x5x?xf32>) -> ()
  }) : () -> ()
}) : () -> ()

