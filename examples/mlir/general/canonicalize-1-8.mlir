"builtin.module"() ({
  "func.func"() <{function_type = (memref<10xf32>, f32) -> (), sym_name = "memset_after_cast"}> ({
  ^bb0(%arg0: memref<10xf32>, %arg1: f32):
    %0 = "memref.cast"(%arg0) : (memref<10xf32>) -> memref<?xf32>
    "gpu.memset"(%0, %arg1) : (memref<?xf32>, f32) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

