"builtin.module"() ({
  "func.func"() <{function_type = (memref<4096x4096xf32>, index, index) -> f32, sym_name = "dont_vectorize_scalar_load"}> ({
  ^bb0(%arg0: memref<4096x4096xf32>, %arg1: index, %arg2: index):
    %0 = "memref.load"(%arg0, %arg1, %arg2) : (memref<4096x4096xf32>, index, index) -> f32
    "func.return"(%0) : (f32) -> ()
  }) : () -> ()
}) : () -> ()

