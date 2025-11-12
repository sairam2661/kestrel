"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<4xi8>, sym_name = "strip_signedness_const"}> ({
    %0 = "arith.constant"() <{value = dense<[0, 2, 3, 7]> : tensor<4xi8>}> : () -> tensor<4xi8>
    "func.return"(%0) : (tensor<4xi8>) -> ()
  }) : () -> ()
}) : () -> ()

