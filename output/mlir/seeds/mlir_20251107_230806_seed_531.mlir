"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?xi8>, tensor<?xi8>) -> tensor<?xi8>, sym_name = "bitwise_xor_and_or"}> ({
  ^bb0(%arg0: tensor<?xi8>, %arg1: tensor<?xi8>):
    %0 = "arith.xor"(%arg0, %arg1) : (tensor<?xi8>, tensor<?xi8>) -> tensor<?xi8>
    %1 = "arith.and"(%0, %arg0) : (tensor<?xi8>, tensor<?xi8>) -> tensor<?xi8>
    %2 = "arith.or"(%1, %arg1) : (tensor<?xi8>, tensor<?xi8>) -> tensor<?xi8>
    "func.return"(%2) : (tensor<?xi8>) -> ()
  }) : () -> ()
}) : () -> ()