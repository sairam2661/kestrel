"builtin.module"() ({
  "func.func"() <{function_type = (memref<*xf32>) -> (), sym_name = "memref_cast_unranked_to_ranked"}> ({
  ^bb0(%arg0: memref<*xf32>):
    %0 = "memref.cast"(%arg0) : (memref<*xf32>) -> memref<?x?x10x2xf32>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

