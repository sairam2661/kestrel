"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x2x2xi8>, tensor<2x2x2xi8>) -> tensor<2x2x2xi8>, sym_name = "complex_add_and_cmp"}> ({
  ^bb0(%arg0: tensor<2x2x2xi8>, %arg1: tensor<2x2x2xi8>):
    %c0_i8 = "arith.constant"() <{value = 0 : i8}> : () -> i8
    %c1_i8 = "arith.constant"() <{value = 1 : i8}> : () -> i8
    %0 = "arith.addi"(%arg0, %arg1) : (tensor<2x2x2xi8>, tensor<2x2x2xi8>) -> tensor<2x2x2xi8>
    %1 = "arith.cmpi"(%arg0, %arg1, "eq") : (tensor<2x2x2xi8>, tensor<2x2x2xi8>) -> tensor<2x2x2xi1>
    %2 = "arith.select"(%1, %0, %c1_i8) : (tensor<2x2x2xi1>, tensor<2x2x2xi8>, i8) -> tensor<2x2x2xi8>
    "func.return"(%2) : (tensor<2x2x2xi8>) -> ()
  }) : () -> ()
}) : () -> ()