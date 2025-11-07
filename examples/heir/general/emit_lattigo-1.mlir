"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "test_constant"}> ({
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = dense<[1, 2]> : tensor<2xi32>}> : () -> tensor<2xi32>
    %2 = "arith.constant"() <{value = dense<2> : tensor<4xi32>}> : () -> tensor<4xi32>
    "func.return"() : () -> ()
  }) : () -> ()
}) {scheme.bgv} : () -> ()

