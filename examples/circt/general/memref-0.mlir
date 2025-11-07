"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "remove_unused_mem"}> ({
    %0 = "memref.alloc"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<100xf32>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

