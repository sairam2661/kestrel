"builtin.module"() ({
  "func.func"() <{function_type = (index) -> i32, sym_name = "main"}> ({
  ^bb0(%arg0: index):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "memref.alloc"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<1xi32>
    %2 = "memref.load"(%1, %arg0) : (memref<1xi32>, index) -> i32
    "memref.store"(%0, %1, %arg0) : (i32, memref<1xi32>, index) -> ()
    "func.return"(%2) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

