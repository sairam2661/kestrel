"builtin.module"() ({
  "func.func"() <{function_type = (i32, memref<8xi32>, index) -> (), sym_name = "main"}> ({
  ^bb0(%arg0: i32, %arg1: memref<8xi32>, %arg2: index):
    "memref.store"(%arg0, %arg1, %arg2) : (i32, memref<8xi32>, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

