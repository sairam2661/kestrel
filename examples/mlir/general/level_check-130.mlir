"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x1x1x1x1x1x1xf32>, tensor<1x1x1x1x1x1x1xf32>, tensor<i1>) -> tensor<1x1x1x1x1x1x1xf32>, sym_name = "test_cond_if_rank_valid"}> ({
  ^bb0(%arg0: tensor<1x1x1x1x1x1x1xf32>, %arg1: tensor<1x1x1x1x1x1x1xf32>, %arg2: tensor<i1>):
    %0 = "tosa.cond_if"(%arg2, %arg0, %arg1) ({
    ^bb0(%arg5: tensor<1x1x1x1x1x1x1xf32>, %arg6: tensor<1x1x1x1x1x1x1xf32>):
      "tosa.yield"(%arg5) : (tensor<1x1x1x1x1x1x1xf32>) -> ()
    }, {
    ^bb0(%arg3: tensor<1x1x1x1x1x1x1xf32>, %arg4: tensor<1x1x1x1x1x1x1xf32>):
      "tosa.yield"(%arg4) : (tensor<1x1x1x1x1x1x1xf32>) -> ()
    }) : (tensor<i1>, tensor<1x1x1x1x1x1x1xf32>, tensor<1x1x1x1x1x1x1xf32>) -> tensor<1x1x1x1x1x1x1xf32>
    "func.return"(%0) : (tensor<1x1x1x1x1x1x1xf32>) -> ()
  }) : () -> ()
}) : () -> ()

