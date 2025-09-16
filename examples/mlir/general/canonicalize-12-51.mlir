"builtin.module"() ({
  "func.func"() <{function_type = (memref<?xf32>) -> (), sym_name = "self_copy"}> ({
  ^bb0(%arg0: memref<?xf32>):
    "memref.copy"(%arg0, %arg0) : (memref<?xf32>, memref<?xf32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

