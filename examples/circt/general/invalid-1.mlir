"builtin.module"() ({
  "func.func"() <{function_type = (index) -> i32, sym_name = "dynsize"}> ({
  ^bb0(%arg0: index):
    %0 = "memref.alloc"(%arg0) <{operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?xi32>
    %1 = "arith.constant"() <{value = 0 : index}> : () -> index
    %2 = "memref.load"(%0, %1) : (memref<?xi32>, index) -> i32
    "func.return"(%2) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

