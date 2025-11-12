"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x5xi8>, tensor<4x5xi8>) -> tensor<4x5xi8>, sym_name = "mystery_op"}> ({
  ^bb0(%arg0: tensor<4x5xi8>, %arg1: tensor<4x5xi8>):
    %0 = "arith.constant"() <{value = 1 : i1}> : () -> i1
    %1 = "arith.cmpi"(%arg0, %arg1) <{predicate = 1}> : (tensor<4x5xi8>, tensor<4x5xi8>) -> tensor<4x5xi1>
    %2 = "arith.addi"(%arg0, %arg1) : (tensor<4x5xi8>, tensor<4x5xi8>) -> tensor<4x5xi8>
    %3 = "arith.cmpi"(%2, %arg0) <{predicate = 0}> : (tensor<4x5xi8>, tensor<4x5xi8>) -> tensor<4x5xi1>
    %4 = "arith.addi"(%3, %1) : (tensor<4x5xi1>, tensor<4x5xi1>) -> tensor<4x5xi1>
    "func.return"(%4) : (tensor<4x5xi1>) -> ()
  }) : () -> ()
}) : () -> ()