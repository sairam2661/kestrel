"builtin.module"() ({
  "func.func"() <{function_type = (memref<2xf32>) -> memref<2xf32>, sym_name = "conversion_static"}> ({
  ^bb0(%arg0: memref<2xf32>):
    %0 = "bufferization.clone"(%arg0) : (memref<2xf32>) -> memref<2xf32>
    "memref.dealloc"(%arg0) : (memref<2xf32>) -> ()
    "func.return"(%0) : (memref<2xf32>) -> ()
  }) : () -> ()
}) : () -> ()

