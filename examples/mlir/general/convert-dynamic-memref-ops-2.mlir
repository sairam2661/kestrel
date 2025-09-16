"builtin.module"() ({
  "func.func"() <{function_type = (memref<*xf32>) -> (), sym_name = "unranked_dealloc"}> ({
  ^bb0(%arg0: memref<*xf32>):
    "memref.dealloc"(%arg0) : (memref<*xf32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

