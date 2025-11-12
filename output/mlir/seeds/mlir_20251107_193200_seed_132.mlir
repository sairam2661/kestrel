"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x2xi8>, tensor<2x2xi8>) -> tensor<2x2xi8>, sym_name = "tensor_xor"}> ({
  ^bb0(%arg0: tensor<2x2xi8>, %arg1: tensor<2x2xi8>):
    %0 = "arith.xori"(%arg0, %arg1) : (tensor<2x2xi8>, tensor<2x2xi8>) -> tensor<2x2xi8>
    "func.return"(%0) : (tensor<2x2xi8>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<2x2xi8>) -> tensor<2x2xi8>, sym_name = "tensor_bitcast"}> ({
  ^bb0(%arg2: tensor<2x2xi8>):
    %1 = "arith.bitcast"(%arg2) : (tensor<2x2xi8>) -> tensor<2x2xi8>
    "func.return"(%1) : (tensor<2x2xi8>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<2x2xi8>, tensor<2x2xi8>) -> tensor<2x2xi8>, sym_name = "tensor_or"}> ({
  ^bb0(%arg3: tensor<2x2xi8>, %arg4: tensor<2x2xi8>):
    %2 = "arith.ori"(%arg3, %arg4) : (tensor<2x2xi8>, tensor<2x2xi8>) -> tensor<2x2xi8>
    "func.return"(%2) : (tensor<2x2xi8>) -> ()
  }) : () -> ()
}) : () -> ()