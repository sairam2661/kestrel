"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<64xi16>, sym_name = "test_concat"}> ({
    %0 = "arith.constant"() <{value = dense<[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1]> : tensor<32xi16>}> : () -> tensor<32xi16>
    %1 = "tensor.concat"(%0, %0) <{dim = 0 : i64}> : (tensor<32xi16>, tensor<32xi16>) -> tensor<64xi16>
    "func.return"(%1) : (tensor<64xi16>) -> ()
  }) : () -> ()
}) {scheme.bgv} : () -> ()

