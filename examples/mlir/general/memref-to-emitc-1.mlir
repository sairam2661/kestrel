"builtin.module"() ({
  "func.func"() <{function_type = (memref<4x8xf32>, f32, index, index) -> (), sym_name = "memref_store"}> ({
  ^bb0(%arg0: memref<4x8xf32>, %arg1: f32, %arg2: index, %arg3: index):
    "memref.store"(%arg1, %arg0, %arg2, %arg3) : (f32, memref<4x8xf32>, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

