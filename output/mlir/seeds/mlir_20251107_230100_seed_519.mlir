"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi8>) -> tensor<4xi16>, sym_name = "tensor_conversion"}> ({
  ^bb0(%arg0: tensor<4xi8>):
    %0 = "arith.constant"() <{value = dense<127> : tensor<4xi8>}> : tensor<4xi8>
    %1 = "arith.addi"(%arg0, %0) : (tensor<4xi8>, tensor<4xi8>) -> tensor<4xi8>
    %2 = "arith.extui"(%1) : (tensor<4xi8>) -> tensor<4xi16>
    "func.return"(%2) : (tensor<4xi16>) -> ()
  }) : () -> ()
}) : () -> ()