"builtin.module"() ({
  "func.func"() <{function_type = (memref<?x42x?xf32>) -> (), sym_name = "mixed_dealloc"}> ({
  ^bb0(%arg0: memref<?x42x?xf32>):
    "memref.dealloc"(%arg0) : (memref<?x42x?xf32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

