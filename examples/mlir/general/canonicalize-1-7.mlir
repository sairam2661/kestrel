"builtin.module"() ({
  "func.func"() <{function_type = (memref<10xf32>, memref<10xf32>) -> (), sym_name = "memcpy_after_cast"}> ({
  ^bb0(%arg0: memref<10xf32>, %arg1: memref<10xf32>):
    %0 = "memref.cast"(%arg0) : (memref<10xf32>) -> memref<?xf32>
    %1 = "memref.cast"(%arg1) : (memref<10xf32>) -> memref<?xf32>
    "gpu.memcpy"(%0, %1) : (memref<?xf32>, memref<?xf32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

