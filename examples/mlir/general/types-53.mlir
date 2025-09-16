"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x2x3x4xi32>) -> (), sym_name = "operand_rank_equals_result_size_success"}> ({
  ^bb0(%arg0: tensor<1x2x3x4xi32>):
    %0 = "test.operand_rank_equals_result_size"(%arg0) : (tensor<1x2x3x4xi32>) -> tensor<4xi32>
    %1 = "test.operand_rank_equals_result_size"(%arg0) : (tensor<1x2x3x4xi32>) -> memref<2x2xf32>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

