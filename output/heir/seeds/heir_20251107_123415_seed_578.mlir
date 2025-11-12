"builtin.module"() ({
  "func.func"() <{arg_attrs = [{secret.secret}], function_type = (tensor<10xi8>) -> tensor<10xi8>, sym_name = "complex_secret_op"}> ({
  ^bb0(%arg0: tensor<10xi8>):
    %0 = "arith.constant"() <{value = 255 : i8}> : () -> i8
    %1:10 = "secret.generic"(%arg0, %0) ({
    ^bb0(%arg1: i8, %arg2: i8):
      %2 = "arith.muli"(%arg1, %arg2) <{overflowFlags = #arith_overflownone}> : (i8, i8) -> i8
      "secret.yield"(%2) : (i8) -> ()
    }) : (tensor<10xi8>, i8) -> tensor<10xi8>
    "func.return"(%1) : (tensor<10xi8>) -> ()
  }) : () -> ()
}) : () -> ()