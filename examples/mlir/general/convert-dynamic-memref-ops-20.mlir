"builtin.module"() ({
  "func.func"() <{function_type = (memref<42x2x?xf32>) -> (), sym_name = "memref_cast_ranked_to_unranked"}> ({
  ^bb0(%arg0: memref<42x2x?xf32>):
    %0 = "memref.cast"(%arg0) : (memref<42x2x?xf32>) -> memref<*xf32>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

