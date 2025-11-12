"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x4xi8>) -> tensor<4x4xi16>, sym_name = "mixed_type_operations"}> ({
  ^bb0(%arg0: tensor<4x4xi8>):
    %0 = "arith.constant"() <{value = 2 : ui8}> : () -> ui8
    %1 = "arith.addi"(%arg0, %0) : (tensor<4x4xi8>, ui8) -> tensor<4x4xi8>
    %2 = "arith.constant"() <{value = 3 : ui8}> : () -> ui8
    %3 = "arith.addi"(%1, %2) : (tensor<4x4xi8>, ui8) -> tensor<4x4xi8>
    %4 = "tosa.const"() <{values = dense<1> : tensor<4x4xi16>}> : () -> tensor<4x4xi16>
    %5 = "arith.addi"(%3, %4) : (tensor<4x4xi8>, tensor<4x4xi16>) -> tensor<4x4xi16>
    "func.return"(%5) : (tensor<4x4xi16>) -> ()
  }) : () -> ()
}) : () -> ()