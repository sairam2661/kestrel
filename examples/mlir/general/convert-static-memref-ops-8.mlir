"builtin.module"() ({
  "func.func"() <{function_type = (memref<10x42xf32>, index, index) -> (), sym_name = "static_load"}> ({
  ^bb0(%arg0: memref<10x42xf32>, %arg1: index, %arg2: index):
    %0 = "memref.load"(%arg0, %arg1, %arg2) : (memref<10x42xf32>, index, index) -> f32
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

