"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2xf32>, tensor<3xf32>, tensor<i1>) -> (), sym_name = "if_test_dynamic"}> ({
  ^bb0(%arg0: tensor<2xf32>, %arg1: tensor<3xf32>, %arg2: tensor<i1>):
    %0 = "tosa.cond_if"(%arg2) ({
      "tosa.yield"(%arg0) : (tensor<2xf32>) -> ()
    }, {
      "tosa.yield"(%arg1) : (tensor<3xf32>) -> ()
    }) : (tensor<i1>) -> tensor<?xf32>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

