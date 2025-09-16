"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<1x1x1xi32>, sym_name = "reduce_prod_constant"}> ({
    %0 = "tosa.const"() <{values = dense<42> : tensor<1x1x1xi32>}> : () -> tensor<1x1x1xi32>
    %1 = "tosa.reduce_product"(%0) <{axis = 0 : i32}> : (tensor<1x1x1xi32>) -> tensor<1x1x1xi32>
    "func.return"(%1) : (tensor<1x1x1xi32>) -> ()
  }) : () -> ()
}) : () -> ()

