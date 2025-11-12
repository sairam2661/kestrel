"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x3xi8>, tensor<2x3xi32>) -> tensor<2x3xi8>, sym_name = "mixed_add"}> ({
  ^bb0(%arg0: tensor<2x3xi8>, %arg1: tensor<2x3xi32>):
    %0 = "arith.constant"() <{value = 1 : i8}> : () -> i8
    %1 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %2 = "arith.extui"(%arg0) <{}> : (tensor<2x3xi8>) -> tensor<2x3xi32>
    %3 = "arith.addi"(%2, %arg1) <{}> : (tensor<2x3xi32>, tensor<2x3xi32>) -> tensor<2x3xi32>
    %4 = "arith.extui"(%arg0) <{}> : (tensor<2x3xi8>) -> tensor<2x3xi32>
    %5 = "arith.addi"(%4, %1) <{}> : (tensor<2x3xi32>, tensor<2x3xi32>) -> tensor<2x3xi32>
    %6 = "arith.addi"(%3, %5) <{}> : (tensor<2x3xi32>, tensor<2x3xi32>) -> tensor<2x3xi32>
    %7 = "arith.trunci"(%6) <{}> : (tensor<2x3xi32>) -> tensor<2x3xi8>
    "func.return"(%7) : (tensor<2x3xi8>) -> ()
  }) : () -> ()
}) : () -> ()