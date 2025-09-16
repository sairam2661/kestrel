"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<5xf32>, sym_name = "tensor.empty"}> ({
    %0 = "tensor.empty"() : () -> tensor<5xf32>
    "func.return"(%0) : (tensor<5xf32>) -> ()
  }) : () -> ()
}) : () -> ()

