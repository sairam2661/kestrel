"builtin.module"() ({
  "func.func"() <{function_type = (tensor<i32>) -> tensor<i32>, sym_name = "while_test"}> ({
  ^bb0(%arg0: tensor<i32>):
    %0 = "tosa.while_loop"(%arg0) ({
    ^bb0(%arg2: tensor<i32>):
      %3 = "tosa.const"() <{values = dense<3> : tensor<i32>}> : () -> tensor<i32>
      %4 = "tosa.greater_equal"(%3, %arg2) : (tensor<i32>, tensor<i32>) -> tensor<i1>
      "tosa.yield"(%4) : (tensor<i1>) -> ()
    }, {
    ^bb0(%arg1: tensor<i32>):
      %1 = "tosa.const"() <{values = dense<1> : tensor<i32>}> : () -> tensor<i32>
      %2 = "tosa.add"(%arg1, %1) : (tensor<i32>, tensor<i32>) -> tensor<i32>
      "tosa.yield"(%2) : (tensor<i32>) -> ()
    }) : (tensor<i32>) -> tensor<i32>
    "func.return"(%0) : (tensor<i32>) -> ()
  }) : () -> ()
}) : () -> ()

