"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2xf32>, tensor<2xf32>) -> tensor<2xf32>, sym_name = "generic_op"}> ({
  ^bb0(%arg0: tensor<2xf32>, %arg1: tensor<2xf32>):
    %0 = "test_dialect.op"(%arg0, %arg1) : (tensor<2xf32>, tensor<2xf32>) -> tensor<2xf32>
    "func.return"(%0) : (tensor<2xf32>) -> ()
  }) : () -> ()
}) : () -> ()

