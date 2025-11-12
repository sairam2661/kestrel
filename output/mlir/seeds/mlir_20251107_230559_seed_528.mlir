"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<2x2xi32>, sym_name = "complex_computation"}> ({
    %0 = "arith.constant"() <{value = dense<[[1, 2], [3, 4]]> : tensor<2x2xi32>}> : () -> tensor<2x2xi32>
    %1 = "arith.constant"() <{value = dense<[[5, 6], [7, 8]]> : tensor<2x2xi32>}> : () -> tensor<2x2xi32>
    %2 = "arith.addi"(%0, %1) : (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>
    %3 = "arith.cmpi"("eq", %0, %1) : (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi1>
    %4 = "arith.addf"(%3, %3) : (tensor<2x2xi1>, tensor<2x2xi1>) -> tensor<2x2xf32>
    "func.return"(%2) : (tensor<2x2xi32>) -> ()
  }) : () -> ()
}) : () -> ()