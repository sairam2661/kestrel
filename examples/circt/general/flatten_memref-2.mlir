"builtin.module"() ({
  "func.func"() <{function_type = (memref<5x6x7x9x10xi32>, index) -> i32, sym_name = "multidim5"}> ({
  ^bb0(%arg0: memref<5x6x7x9x10xi32>, %arg1: index):
    %0 = "memref.load"(%arg0, %arg1, %arg1, %arg1, %arg1, %arg1) : (memref<5x6x7x9x10xi32>, index, index, index, index, index) -> i32
    "func.return"(%0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

