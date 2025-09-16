"builtin.module"() ({
  "func.func"() <{function_type = (tensor<100xf32>) -> tensor<100xf32>, sym_name = "nop"}> ({
  ^bb0(%arg0: tensor<100xf32>):
    "func.return"(%arg0) : (tensor<100xf32>) -> ()
  }) : () -> ()
}) : () -> ()

