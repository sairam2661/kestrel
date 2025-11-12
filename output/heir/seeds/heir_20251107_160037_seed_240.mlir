"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi8>, tensor<4xi8>) -> tensor<4xi8>, sym_name = "xor_combine"}> ({
  ^bb0(%arg0: tensor<4xi8>, %arg1: tensor<4xi8>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "secret.generic"(%arg0, %arg1) ({
    ^bb0(%arg2: tensor<4xi8>, %arg3: tensor<4xi8>):
      %2 = "arith.cmpi"("ne", %arg2, %arg3) <{outputType = i8}> : (tensor<4xi8>, tensor<4xi8>) -> tensor<4xi8>
      "secret.yield"(%2) : (tensor<4xi8>) -> ()
    }) : (tensor<4xi8>, tensor<4xi8>) -> tensor<4xi8>
    "func.return"(%1) : (tensor<4xi8>) -> ()
  }) : () -> ()
}) : () -> ()