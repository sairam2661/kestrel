"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x2x4xi8>, tensor<2x2x4xi8>) -> tensor<2x2x4xi1>, sym_name = "tensor_cmp"}> ({
  ^bb0(%arg0: tensor<2x2x4xi8>, %arg1: tensor<2x2x4xi8>):
    %0 = "arith.cmpi"(%arg0, %arg1) <{predicate = 4 : i64}> : (tensor<2x2x4xi8>, tensor<2x2x4xi8>) -> tensor<2x2x4xi1>
    "func.return"(%0) : (tensor<2x2x4xi1>) -> ()
  }) : () -> ()
}) : () -> ()