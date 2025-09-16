"builtin.module"() ({
  "func.func"() <{function_type = (memref<?xf32>) -> memref<?xf32>, sym_name = "clone_multiple_dealloc_of_source"}> ({
  ^bb0(%arg0: memref<?xf32>):
    %0 = "bufferization.clone"(%arg0) : (memref<?xf32>) -> memref<?xf32>
    "if_else"() ({
      "memref.dealloc"(%arg0) : (memref<?xf32>) -> ()
    }, {
      "memref.dealloc"(%arg0) : (memref<?xf32>) -> ()
    }) : () -> ()
    "func.return"(%0) : (memref<?xf32>) -> ()
  }) : () -> ()
}) : () -> ()

