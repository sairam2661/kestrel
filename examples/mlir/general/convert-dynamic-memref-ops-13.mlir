"builtin.module"() ({
  "func.func"() <{function_type = (memref<10x42xf32>) -> (), sym_name = "memref_cast_static_to_dynamic"}> ({
  ^bb0(%arg0: memref<10x42xf32>):
    %0 = "memref.cast"(%arg0) : (memref<10x42xf32>) -> memref<?x?xf32>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

