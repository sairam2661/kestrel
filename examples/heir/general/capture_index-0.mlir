"builtin.module"() ({
  "func.func"() <{function_type = (!secret.secret<memref<8xi8>>, index) -> !secret.secret<i8>, sym_name = "capture"}> ({
  ^bb0(%arg0: !secret.secret<memref<8xi8>>, %arg1: index):
    %0 = "secret.generic"(%arg0) ({
    ^bb0(%arg2: memref<8xi8>):
      %1 = "memref.load"(%arg2, %arg1) : (memref<8xi8>, index) -> i8
      %2 = "arith.addi"(%1, %1) <{overflowFlags = #arith.overflow<none>}> : (i8, i8) -> i8
      "secret.yield"(%2) : (i8) -> ()
    }) : (!secret.secret<memref<8xi8>>) -> !secret.secret<i8>
    "func.return"(%0) : (!secret.secret<i8>) -> ()
  }) : () -> ()
}) : () -> ()

