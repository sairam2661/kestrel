"builtin.module"() ({
  "func.func"() <{function_type = (memref<?x?xf32>) -> (), sym_name = "memref_cast_dynamic_to_static"}> ({
  ^bb0(%arg0: memref<?x?xf32>):
    %0 = "memref.cast"(%arg0) : (memref<?x?xf32>) -> memref<10x12xf32>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

