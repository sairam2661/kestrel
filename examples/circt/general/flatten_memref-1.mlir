"builtin.module"() ({
  "func.func"() <{function_type = (memref<5x6x7xi32>, index, index, index) -> i32, sym_name = "multidim3"}> ({
  ^bb0(%arg0: memref<5x6x7xi32>, %arg1: index, %arg2: index, %arg3: index):
    %0 = "memref.load"(%arg0, %arg1, %arg2, %arg3) : (memref<5x6x7xi32>, index, index, index) -> i32
    "func.return"(%0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

