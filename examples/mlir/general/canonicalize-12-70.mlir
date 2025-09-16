"builtin.module"() ({
  "func.func"() <{function_type = (memref<2xf32>, f32) -> memref<2xf32>, sym_name = "memref_realloc_dead"}> ({
  ^bb0(%arg0: memref<2xf32>, %arg1: f32):
    %0 = "memref.realloc"(%arg0) : (memref<2xf32>) -> memref<4xf32>
    %1 = "arith.constant"() <{value = 2 : index}> : () -> index
    "memref.store"(%arg1, %0, %1) : (f32, memref<4xf32>, index) -> ()
    "func.return"(%arg0) : (memref<2xf32>) -> ()
  }) : () -> ()
}) : () -> ()

