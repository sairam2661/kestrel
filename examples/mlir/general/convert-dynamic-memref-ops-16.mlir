"builtin.module"() ({
  "func.func"() <{function_type = (memref<?x?xf32>) -> (), sym_name = "memref_cast_dynamic_to_mixed"}> ({
  ^bb0(%arg0: memref<?x?xf32>):
    %0 = "memref.cast"(%arg0) : (memref<?x?xf32>) -> memref<?x12xf32>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

