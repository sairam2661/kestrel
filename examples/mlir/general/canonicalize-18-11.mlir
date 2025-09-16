"builtin.module"() ({
  "func.func"() <{function_type = (memref<?xf32>) -> (), sym_name = "alias_is_freed"}> ({
  ^bb0(%arg0: memref<?xf32>):
    %0 = "memref.cast"(%arg0) : (memref<?xf32>) -> memref<32xf32>
    %1 = "bufferization.clone"(%0) : (memref<32xf32>) -> memref<32xf32>
    "memref.dealloc"(%arg0) : (memref<?xf32>) -> ()
    "use"(%1) : (memref<32xf32>) -> ()
    "memref.dealloc"(%1) : (memref<32xf32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

