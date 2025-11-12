"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?xi8>, tensor<?xi8>) -> tensor<?xi8>, sym_name = "xor_tensors"}> ({
  ^bb0(%arg0: tensor<?xi8>, %arg1: tensor<?xi8>):
    %0 = "arith.xor"(%arg0, %arg1) : (tensor<?xi8>, tensor<?xi8>) -> tensor<?xi8>
    %1 = "arith.xor"(%0, %arg0) : (tensor<?xi8>, tensor<?xi8>) -> tensor<?xi8>
    %2 = "arith.xor"(%1, %arg1) : (tensor<?xi8>, tensor<?xi8>) -> tensor<?xi8>
    "func.return"(%2) : (tensor<?xi8>) -> ()
  }) : () -> ()
}) : () -> ()