"builtin.module"() ({
  "func.func"() <{function_type = (memref<4xi32>) -> i32, sym_name = "main"}> ({
  ^bb0(%arg0: memref<4xi32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    "memref.store"(%1, %arg0, %0) : (i32, memref<4xi32>, index) -> ()
    "func.return"(%1) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

