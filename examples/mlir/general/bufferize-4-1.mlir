"builtin.module"() ({
  "func.func"() <{function_type = (tensor<*xf32>) -> index, sym_name = "rank"}> ({
  ^bb0(%arg0: tensor<*xf32>):
    %0 = "tensor.rank"(%arg0) : (tensor<*xf32>) -> index
    "func.return"(%0) : (index) -> ()
  }) : () -> ()
}) : () -> ()

