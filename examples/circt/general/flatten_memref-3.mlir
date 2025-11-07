"builtin.module"() ({
  "func.func"() <{function_type = (memref<2x4x8x2x4xi32>, index) -> i32, sym_name = "multidim5_p2"}> ({
  ^bb0(%arg0: memref<2x4x8x2x4xi32>, %arg1: index):
    %0 = "memref.load"(%arg0, %arg1, %arg1, %arg1, %arg1, %arg1) : (memref<2x4x8x2x4xi32>, index, index, index, index, index) -> i32
    "func.return"(%0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

