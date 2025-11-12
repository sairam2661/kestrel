"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x4xi8>, tensor<4x4xi8>) -> tensor<4x4xi8>, sym_name = "unusual_add_and_cmp"}> ({
  ^bb0(%arg0: tensor<4x4xi8>, %arg1: tensor<4x4xi8>):
    %0 = "arith.addi"(%arg0, %arg1) : (tensor<4x4xi8>, tensor<4x4xi8>) -> tensor<4x4xi8>
    %1 = "arith.cmpi"(%arg0, %arg1, "slt") : (tensor<4x4xi8>, tensor<4x4xi8>) -> tensor<4x4xi1>
    %2 = "arith.addi"(%0, %1) : (tensor<4x4xi8>, tensor<4x4xi1>) -> tensor<4x4xi8>
    "func.return"(%2) : (tensor<4x4xi8>) -> ()
  }) : () -> ()
}) : () -> ()