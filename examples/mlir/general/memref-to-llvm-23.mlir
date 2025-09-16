"builtin.module"() ({
  "func.func"() <{function_type = (memref<?xf32>) -> index, sym_name = "extract_aligned_pointer_as_index"}> ({
  ^bb0(%arg0: memref<?xf32>):
    %0 = "memref.extract_aligned_pointer_as_index"(%arg0) : (memref<?xf32>) -> index
    "func.return"(%0) : (index) -> ()
  }) : () -> ()
}) : () -> ()

