"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi8>, tensor<4xi8>) -> tensor<4xi8>, sym_name = "mismatched_dimension_add"}> ({
  ^bb0(%arg0: tensor<4xi8>, %arg1: tensor<4xi8>):
    %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_OVERFLOW_NONE}> : (tensor<4xi8>, tensor<4xi8>) -> tensor<4xi8>
    "func.return"(%0) : (tensor<4xi8>) -> ()
  }) : () -> ()
}) : () -> ()