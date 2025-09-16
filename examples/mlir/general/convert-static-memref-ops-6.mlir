"builtin.module"() ({
  "func.func"() <{function_type = (memref<10x8xf32>) -> (), sym_name = "static_dealloc"}> ({
  ^bb0(%arg0: memref<10x8xf32>):
    "memref.dealloc"(%arg0) : (memref<10x8xf32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

