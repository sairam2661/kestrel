"builtin.module"() ({
  "func.func"() <{function_type = (tensor<536870912xi32>, tensor<i32>) -> (), sym_name = "test_while_loop_tensor_size_invalid"}> ({
  ^bb0(%arg0: tensor<536870912xi32>, %arg1: tensor<i32>):
    %0 = "tosa.const"() <{values = dense<0> : tensor<i32>}> : () -> tensor<i32>
    %1:3 = "tosa.while_loop"(%0, %0, %arg0) ({
    ^bb0(%arg5: tensor<i32>, %arg6: tensor<i32>, %arg7: tensor<536870912xi32>):
      %7 = "tosa.greater_equal"(%arg6, %arg1) : (tensor<i32>, tensor<i32>) -> tensor<i1>
      %8 = "tosa.logical_not"(%7) : (tensor<i1>) -> tensor<i1>
      "tosa.yield"(%7) : (tensor<i1>) -> ()
    }, {
    ^bb0(%arg2: tensor<i32>, %arg3: tensor<i32>, %arg4: tensor<536870912xi32>):
      %2 = "tosa.const"() <{values = dense<1> : tensor<i32>}> : () -> tensor<i32>
      %3 = "tosa.const"() <{values = dense<4> : tensor<1xi32>}> : () -> tensor<1xi32>
      %4 = "tosa.add"(%arg3, %2) : (tensor<i32>, tensor<i32>) -> tensor<i32>
      %5 = "tosa.add"(%arg4, %3) : (tensor<536870912xi32>, tensor<1xi32>) -> tensor<536870912xi32>
      %6 = "tosa.add"(%arg2, %2) : (tensor<i32>, tensor<i32>) -> tensor<i32>
      "tosa.yield"(%6, %4, %5) : (tensor<i32>, tensor<i32>, tensor<536870912xi32>) -> ()
    }) : (tensor<i32>, tensor<i32>, tensor<536870912xi32>) -> (tensor<i32>, tensor<i32>, tensor<536870912xi32>)
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

