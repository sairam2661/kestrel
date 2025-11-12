"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3x3xi16>, tensor<3x3xi16>) -> tensor<3x3xi32>, sym_name = "bitwise_and_add"}> ({
  ^bb0(%arg0: tensor<3x3xi16>, %arg1: tensor<3x3xi16>):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %arg0) : (tensor<3x3xi16>, tensor<3x3xi16>) -> tensor<3x3xi16>
    %2 = "arith.andi"(%arg1, %1) : (tensor<3x3xi16>, tensor<3x3xi16>) -> tensor<3x3xi16>
    %3 = "arith.extui"(%2) : (tensor<3x3xi16>) -> tensor<3x3xi32>
    %4 = "arith.addi"(%3, %0) : (tensor<3x3xi32>, i32) -> tensor<3x3xi32>
    "func.return"(%4) : (tensor<3x3xi32>) -> ()
  }) : () -> ()
}) : () -> ()