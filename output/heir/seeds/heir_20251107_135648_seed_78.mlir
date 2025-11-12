"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi8>, tensor<4xi8>) -> tensor<4xi8>, sym_name = "rotate_xor"}> ({
  ^bb0(%arg0: tensor<4xi8>, %arg1: tensor<4xi8>):
    %0 = "tensor_ext.rotate"(%arg0, %arg1) : (tensor<4xi8>, tensor<4xi8>) -> tensor<4xi8>
    %1 = "arith.xori"(%0, %arg1) : (tensor<4xi8>, tensor<4xi8>) -> tensor<4xi8>
    "func.return"(%1) : (tensor<4xi8>) -> ()
  }) : () -> ()
}) : () -> ()