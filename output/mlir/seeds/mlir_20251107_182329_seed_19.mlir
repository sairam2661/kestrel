"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x?xi32>, tensor<?x?xi32>) -> tensor<?x?xi32>, sym_name = "complex_add"}> ({
  ^bb0(%arg0: tensor<?x?xi32>, %arg1: tensor<?x?xi32>):
    %0 = "arith.addi"(%arg0, %arg1) : (tensor<?x?xi32>, tensor<?x?xi32>) -> tensor<?x?xi32>
    %1 = "tosa.reduce_sum"(%0) <{axis = 0 : i32}> : (tensor<?x?xi32>) -> tensor<?xi32>
    %2 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %3 = "arith.cmpi"(%1, %2, "sgt") : (tensor<?xi32>, i32) -> tensor<?xi1>
    "scf.if"(%3) ({
    ^bb1(%arg2: tensor<?xi1>):
      %4 = "arith.constant"() <{value = 2 : i32}> : () -> i32
      "func.return"(%4) : (i32) -> ()
    }) {
    } : (tensor<?xi1>) -> ()
    "func.return"(%0) : (tensor<?x?xi32>) -> ()
  }) : () -> ()
}) : () -> ()