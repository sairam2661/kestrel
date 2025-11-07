"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<32xi32>, sym_name = "concat"}> ({
    %0 = "arith.constant"() <{value = dense<1> : tensor<8xi32>}> : () -> tensor<8xi32>
    %1 = "tensor.concat"(%0, %0, %0, %0) <{dim = 0 : i64}> : (tensor<8xi32>, tensor<8xi32>, tensor<8xi32>, tensor<8xi32>) -> tensor<32xi32>
    "func.return"(%1) : (tensor<32xi32>) -> ()
  }) : () -> ()
}) {scheme.bgv} : () -> ()

