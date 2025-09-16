"builtin.module"() ({
  "func.func"() <{function_type = (memref<42x?xf32>) -> (), sym_name = "memref_cast_mixed_to_dynamic"}> ({
  ^bb0(%arg0: memref<42x?xf32>):
    %0 = "memref.cast"(%arg0) : (memref<42x?xf32>) -> memref<?x?xf32>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

