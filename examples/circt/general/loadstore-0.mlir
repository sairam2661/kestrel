"builtin.module"() ({
  "func.func"() <{function_type = (index) -> i8, sym_name = "main"}> ({
  ^bb0(%arg0: index):
    %0 = "memref.alloc"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<10xi8>
    %1 = "arith.constant"() <{value = 1 : i8}> : () -> i8
    "memref.store"(%1, %0, %arg0) : (i8, memref<10xi8>, index) -> ()
    %2 = "memref.load"(%0, %arg0) : (memref<10xi8>, index) -> i8
    "func.return"(%2) : (i8) -> ()
  }) : () -> ()
}) : () -> ()

