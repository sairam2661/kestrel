"builtin.module"() ({
  "func.func"() <{function_type = (i64, memref<2x3xi8>) -> (i64, memref<2x3xi8>), sym_name = "complexOpSequence"}> ({
  ^bb0(%arg0: i64, %arg1: memref<2x3xi8>):
    %0 = "arith.constant"() <{value = 123 : i64}> : () -> i64
    %1 = "arith.addi"(%arg0, %0) : (i64, i64) -> i64
    %2 = "arith.constant"() <{value = 45 : i8}> : () -> i8
    %3 = "memref.store"(%2, %arg1, %c0, %c1) : (i8, memref<2x3xi8>, index, index) -> ()
    %4 = "memref.load"(%arg1, %c0, %c1) : (memref<2x3xi8>, index, index) -> i8
    %5 = "arith.addi"(%1, %4) : (i64, i64) -> i64
    "func.return"(%5, %arg1) : (i64, memref<2x3xi8>) -> ()
  }) : () -> ()
}) : () -> ()