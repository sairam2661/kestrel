"builtin.module"() ({
  "func.func"() <{function_type = (f32, memref<4xf32>, index) -> (), sym_name = "atomicrmw_cast_fold"}> ({
  ^bb0(%arg0: f32, %arg1: memref<4xf32>, %arg2: index):
    %0 = "memref.cast"(%arg1) : (memref<4xf32>) -> memref<?xf32>
    %1 = "memref.atomic_rmw"(%arg0, %0, %arg2) <{kind = 0 : i64}> : (f32, memref<?xf32>, index) -> f32
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

