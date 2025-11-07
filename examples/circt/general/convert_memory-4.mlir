"builtin.module"() ({
  "func.func"() <{function_type = (index) -> i32, sym_name = "main"}> ({
  ^bb0(%arg0: index):
    %0 = "memref.alloc"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<64xi32>
    %1 = "memref.load"(%0, %arg0) : (memref<64xi32>, index) -> i32
    "func.return"(%1) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

