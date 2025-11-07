"builtin.module"() ({
  "func.func"() <{function_type = (index) -> (), sym_name = "load_store"}> ({
  ^bb0(%arg0: index):
    %0 = "memref.alloc"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<4xi32>
    %1 = "arith.constant"() <{value = 11 : i32}> : () -> i32
    "memref.store"(%1, %0, %arg0) : (i32, memref<4xi32>, index) -> ()
    %2 = "memref.load"(%0, %arg0) : (memref<4xi32>, index) -> i32
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

