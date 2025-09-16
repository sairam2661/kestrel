"builtin.module"() ({
  "func.func"() <{function_type = (memref<42x?xf32>) -> (), sym_name = "memref_cast_mixed_to_mixed"}> ({
  ^bb0(%arg0: memref<42x?xf32>):
    %0 = "memref.cast"(%arg0) : (memref<42x?xf32>) -> memref<?x1xf32>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

