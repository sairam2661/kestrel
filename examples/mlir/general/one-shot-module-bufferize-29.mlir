"builtin.module"() ({
  "func.func"() <{function_type = (tensor<5xf32>) -> tensor<5xf32>, sym_name = "outer_func"}> ({
  ^bb0(%arg1: tensor<5xf32>):
    "func.return"(%arg1) : (tensor<5xf32>) -> ()
  }) : () -> ()
  "builtin.module"() <{sym_name = "inner_module"}> ({
    "func.func"() <{arg_attrs = [{bufferization.writable = false}], function_type = (tensor<5xf32>) -> tensor<5xf32>, sym_name = "inner_func"}> ({
    ^bb0(%arg0: tensor<5xf32>):
      "func.return"(%arg0) : (tensor<5xf32>) -> ()
    }) : () -> ()
  }) : () -> ()
}) : () -> ()

