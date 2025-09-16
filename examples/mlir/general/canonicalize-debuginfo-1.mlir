"builtin.module"() ({
  "func.func"() <{function_type = (memref<8xi32>) -> i32, sym_name = "simple_hoist"}> ({
  ^bb0(%arg0: memref<8xi32>):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 0 : index}> : () -> index
    "memref.store"(%0, %arg0, %1) : (i32, memref<8xi32>, index) -> ()
    %2 = "arith.constant"() <{value = 88 : i32}> : () -> i32
    "func.return"(%2) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

