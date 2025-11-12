"builtin.module"() ({
  "func.func"() <{arg_attrs = [{secret.secret}], function_type = (tensor<2x3xi32>, tensor<2x3xi32>) -> tensor<2x3xi32>, sym_name = "tensor_op_mix"}> ({
  ^bb0(%arg0: tensor<2x3xi32>, %arg1: tensor<2x3xi32>):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "tensor.extract"(%arg0, %0) : (tensor<2x3xi32>, i32) -> tensor<3xi32>
    %2 = "tensor.extract"(%arg1, %0) : (tensor<2x3xi32>, i32) -> tensor<3xi32>
    %3 = "arith.addi"(%1, %2) : (tensor<3xi32>, tensor<3xi32>) -> tensor<3xi32>
    %4 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %5 = "tensor.insert"(%3, %arg0, %4) : (tensor<3xi32>, tensor<2x3xi32>, i32) -> tensor<2x3xi32>
    "func.return"(%5) : (tensor<2x3xi32>) -> ()
  }) : () -> ()
}) : () -> ()