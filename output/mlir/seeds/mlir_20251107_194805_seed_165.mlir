"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?xi32>, tensor<?xi8>) -> tensor<?xi32>, sym_name = "mixed_type_abs"}> ({
  ^bb0(%arg0: tensor<?xi32>, %arg1: tensor<?xi8>):
    %0 = "arith.constant"() <{value = 127 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %0) : (tensor<?xi32>, i32) -> tensor<?xi32>
    %2 = "arith.extui"(%arg1) : (tensor<?xi8>) -> tensor<?xi32>
    %3 = "tosa.abs"(%2) : (tensor<?xi32>) -> tensor<?xi32>
    %4 = "arith.subi"(%1, %3) : (tensor<?xi32>, tensor<?xi32>) -> tensor<?xi32>
    "func.return"(%4) : (tensor<?xi32>) -> ()
  }) : () -> ()
}) : () -> ()