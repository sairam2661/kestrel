"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1xi32>, tensor<2xf32>, memref<3xi32>, tensor<1x2xf32>, tensor<*xi32>) -> (), sym_name = "same_rank_if_known_success"}> ({
  ^bb0(%arg0: tensor<1xi32>, %arg1: tensor<2xf32>, %arg2: memref<3xi32>, %arg3: tensor<1x2xf32>, %arg4: tensor<*xi32>):
    %0 = "test.operands_and_result_have_same_rank"(%arg0, %arg1) : (tensor<1xi32>, tensor<2xf32>) -> tensor<3xf64>
    %1 = "test.operands_and_result_have_same_rank"(%arg0, %arg2) : (tensor<1xi32>, memref<3xi32>) -> tensor<3xi64>
    %2 = "test.operands_and_result_have_same_rank"(%arg4, %arg1) : (tensor<*xi32>, tensor<2xf32>) -> tensor<2xf32>
    %3 = "test.operands_and_result_have_same_rank"(%arg3, %arg4) : (tensor<1x2xf32>, tensor<*xi32>) -> tensor<1x2xf64>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

