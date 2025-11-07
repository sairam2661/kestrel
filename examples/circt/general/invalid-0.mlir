"builtin.module"() ({
  "func.func"() <{function_type = () -> i32, sym_name = "multidim"}> ({
    %0 = "memref.alloc"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<2x2xi32>
    %1 = "arith.constant"() <{value = 0 : index}> : () -> index
    %2 = "memref.load"(%0, %1, %1) : (memref<2x2xi32>, index, index) -> i32
    "func.return"(%2) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

