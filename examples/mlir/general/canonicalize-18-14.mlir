"builtin.module"() ({
  "func.func"() <{function_type = (memref<?xf32>) -> (), sym_name = "clone_and_realloc"}> ({
  ^bb0(%arg0: memref<?xf32>):
    %0 = "bufferization.clone"(%arg0) : (memref<?xf32>) -> memref<32xf32>
    "use"(%0) : (memref<32xf32>) -> ()
    %1 = "memref.realloc"(%0) : (memref<32xf32>) -> memref<64xf32>
    "memref.dealloc"(%1) : (memref<64xf32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

