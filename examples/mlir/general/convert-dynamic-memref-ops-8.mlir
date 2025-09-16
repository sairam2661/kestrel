"builtin.module"() ({
  "func.func"() <{function_type = (memref<?x?xf32>, index, index) -> (), sym_name = "dynamic_load"}> ({
  ^bb0(%arg0: memref<?x?xf32>, %arg1: index, %arg2: index):
    %0 = "memref.load"(%arg0, %arg1, %arg2) : (memref<?x?xf32>, index, index) -> f32
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

