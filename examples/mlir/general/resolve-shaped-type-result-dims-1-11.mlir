"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x16x?xf32>, tensor<2x?x?xf32>) -> (index, index, index), sym_name = "dim_of_softmax_op"}> ({
  ^bb0(%arg0: tensor<?x16x?xf32>, %arg1: tensor<2x?x?xf32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "linalg.softmax"(%arg0, %arg1) <{dimension = 2 : i64}> : (tensor<?x16x?xf32>, tensor<2x?x?xf32>) -> tensor<2x?x?xf32>
    %4 = "tensor.dim"(%3, %0) : (tensor<2x?x?xf32>, index) -> index
    %5 = "tensor.dim"(%3, %1) : (tensor<2x?x?xf32>, index) -> index
    %6 = "tensor.dim"(%3, %2) : (tensor<2x?x?xf32>, index) -> index
    "func.return"(%4, %5, %6) : (index, index, index) -> ()
  }) : () -> ()
}) : () -> ()

