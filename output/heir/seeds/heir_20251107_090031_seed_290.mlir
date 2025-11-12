"builtin.module"() ({
  "func.func"() <{function_type = (tensor<10xi8>, tensor<10xi8>) -> tensor<10xi8>, sym_name = "tensor_rotate_add"}>
  ({
    ^bb0(%arg0: tensor<10xi8>, %arg1: tensor<10xi8>):
      %0 = "arith.constant"() <{value = 3 : i64}> : () -> i64
      %1 = "tensor_ext.rotate"(%arg0, %0) <{shiftAmount = 3}> : (tensor<10xi8>, i64) -> tensor<10xi8>
      %2 = "arith.addi"(%1, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<10xi8>, tensor<10xi8>) -> tensor<10xi8>
      "func.return"(%2) : (tensor<10xi8>) -> ()
  }) : () -> ()
}) : () -> ()