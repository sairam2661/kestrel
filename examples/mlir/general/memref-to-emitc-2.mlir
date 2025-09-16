"builtin.module"() ({
  "func.func"() <{function_type = (memref<4x8xf32>, index, index) -> f32, sym_name = "memref_load"}> ({
  ^bb0(%arg0: memref<4x8xf32>, %arg1: index, %arg2: index):
    %0 = "memref.load"(%arg0, %arg1, %arg2) : (memref<4x8xf32>, index, index) -> f32
    "func.return"(%0) : (f32) -> ()
  }) : () -> ()
}) : () -> ()

