"builtin.module"() ({
  "func.func"() <{function_type = (tensor<13x27x3xi32>, tensor<13x26xi32>, tensor<13x26x3xi32>) -> tensor<13x27x3xi32>, sym_name = "test_scatter"}> ({
  ^bb0(%arg0: tensor<13x27x3xi32>, %arg1: tensor<13x26xi32>, %arg2: tensor<13x26x3xi32>):
    %0 = "tosa.scatter"(%arg0, %arg1, %arg2) : (tensor<13x27x3xi32>, tensor<13x26xi32>, tensor<13x26x3xi32>) -> tensor<13x27x3xi32>
    "func.return"(%0) : (tensor<13x27x3xi32>) -> ()
  }) : () -> ()
}) : () -> ()

