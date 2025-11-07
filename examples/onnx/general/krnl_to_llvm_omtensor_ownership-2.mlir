"builtin.module"() ({
  "func.func"() <{function_type = () -> memref<2x4xf32>, sym_name = "return_view_of_argument"}> ({
    %0 = "memref.alloc"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<2x4xf32>
    "func.return"(%0) : (memref<2x4xf32>) -> ()
  }) : () -> ()
  "krnl.entry_point"() {func = @return_view_of_argument, numInputs = 0 : i32, numOutputs = 1 : i32, signature = ""} : () -> ()
}) : () -> ()

