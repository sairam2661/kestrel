"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2xi32>, tensor<2xi32>) -> tensor<2xi32>, sym_name = "fuzzed_addition"}> ({
  ^bb0(%arg0: tensor<2xi32>, %arg1: tensor<2xi32>):
    %0 = "arith.addf"(%arg0, %arg1) : (tensor<2xi32>, tensor<2xi32>) -> tensor<2xi32>
    "func.return"(%0) : (tensor<2xi32>) -> ()
  }) : () -> ()
}) : () -> ()