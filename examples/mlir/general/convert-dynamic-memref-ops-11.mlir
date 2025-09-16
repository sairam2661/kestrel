"builtin.module"() ({
  "func.func"() <{function_type = (memref<42x?xf32>, index, index, f32) -> (), sym_name = "mixed_store"}> ({
  ^bb0(%arg0: memref<42x?xf32>, %arg1: index, %arg2: index, %arg3: f32):
    "memref.store"(%arg3, %arg0, %arg1, %arg2) : (f32, memref<42x?xf32>, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

