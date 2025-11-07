"builtin.module"() ({
  "func.func"() <{function_type = (memref<4x4xi32>) -> memref<4x4xi32>, sym_name = "as_func_ret"}> ({
  ^bb0(%arg0: memref<4x4xi32>):
    "func.return"(%arg0) : (memref<4x4xi32>) -> ()
  }) : () -> ()
}) : () -> ()

