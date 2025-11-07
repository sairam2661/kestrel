"builtin.module"() ({
  "func.func"() <{function_type = () -> i16, sym_name = "test_arith_constant"}> ({
    %1 = "arith.constant"() <{value = 17 : i16}> : () -> i16
    "func.return"(%1) : (i16) -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> tensor<2xi16>, sym_name = "test_arith_constant_dense"}> ({
    %0 = "arith.constant"() <{value = dense<2> : tensor<2xi16>}> : () -> tensor<2xi16>
    "func.return"(%0) : (tensor<2xi16>) -> ()
  }) : () -> ()
}) : () -> ()

