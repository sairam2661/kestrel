"builtin.module"() ({
  "func.func"() <{function_type = (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>, sym_name = "tensor_xor"}> ({
  ^bb0(%arg0: tensor<8xi32>, %arg1: tensor<8xi32>):
    %0 = "arith.xori"(%arg0, %arg1) : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    "func.return"(%0) : (tensor<8xi32>) -> ()
  }) : () -> ()
}) : () -> ()