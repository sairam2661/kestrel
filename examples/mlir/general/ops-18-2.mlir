"builtin.module"() ({
  "func.func"() <{function_type = (index) -> tensor<5x?x6xf32>, sym_name = "empty"}> ({
  ^bb0(%arg0: index):
    %0 = "tensor.empty"(%arg0) : (index) -> tensor<5x?x6xf32>
    "func.return"(%0) : (tensor<5x?x6xf32>) -> ()
  }) : () -> ()
}) : () -> ()

