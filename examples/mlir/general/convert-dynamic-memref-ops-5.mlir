"builtin.module"() ({
  "func.func"() <{function_type = (memref<?x?xf32>) -> (), sym_name = "dynamic_dealloc"}> ({
  ^bb0(%arg0: memref<?x?xf32>):
    "memref.dealloc"(%arg0) : (memref<?x?xf32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

