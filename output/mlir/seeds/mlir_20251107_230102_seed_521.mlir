"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3xi8>, tensor<3xi16>) -> tensor<3xi32>, sym_name = "mixed_types_add"}> ({
  ^bb0(%arg0: tensor<3xi8>, %arg1: tensor<3xi16>):
    %0 = "arith.constant"() <{value = 123 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %arg1) : (tensor<3xi8>, tensor<3xi16>) -> tensor<3xi32>
    %2 = "arith.addi"(%1, %0) : (tensor<3xi32>, i32) -> tensor<3xi32>
    "func.return"(%2) : (tensor<3xi32>) -> ()
  }) : () -> ()
}) : () -> ()