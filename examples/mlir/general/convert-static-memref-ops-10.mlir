"builtin.module"() ({
  "func.func"() <{function_type = (memref<10x42xf32>, index, index, f32) -> (), sym_name = "static_store"}> ({
  ^bb0(%arg0: memref<10x42xf32>, %arg1: index, %arg2: index, %arg3: f32):
    "memref.store"(%arg3, %arg0, %arg1, %arg2) : (f32, memref<10x42xf32>, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

