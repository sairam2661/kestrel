"builtin.module"() ({
  "func.func"() <{function_type = (memref<4x4xi32>, index) -> i32, sym_name = "as_func_arg"}> ({
  ^bb0(%arg0: memref<4x4xi32>, %arg1: index):
    %0 = "memref.load"(%arg0, %arg1, %arg1) : (memref<4x4xi32>, index, index) -> i32
    "memref.store"(%0, %arg0, %arg1, %arg1) : (i32, memref<4x4xi32>, index, index) -> ()
    "func.return"(%0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

