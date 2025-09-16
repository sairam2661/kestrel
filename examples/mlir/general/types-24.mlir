"builtin.module"() ({
  "func.func"() <{function_type = (tensor<i8>, tensor<1xi32>, tensor<?x?xf32>) -> (), sym_name = "ranked_tensor_success"}> ({
  ^bb0(%arg0: tensor<i8>, %arg1: tensor<1xi32>, %arg2: tensor<?x?xf32>):
    "test.ranked_tensor_op"(%arg0) : (tensor<i8>) -> ()
    "test.ranked_tensor_op"(%arg1) : (tensor<1xi32>) -> ()
    "test.ranked_tensor_op"(%arg2) : (tensor<?x?xf32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

