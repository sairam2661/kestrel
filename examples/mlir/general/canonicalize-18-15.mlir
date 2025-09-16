"builtin.module"() ({
  "func.func"() <{function_type = (memref<?xf32>) -> memref<32xf32>, sym_name = "clone_and_preceding_dealloc"}> ({
  ^bb0(%arg0: memref<?xf32>):
    "memref.dealloc"(%arg0) : (memref<?xf32>) -> ()
    %0 = "bufferization.clone"(%arg0) : (memref<?xf32>) -> memref<32xf32>
    "func.return"(%0) : (memref<32xf32>) -> ()
  }) : () -> ()
}) : () -> ()

