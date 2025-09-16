"builtin.module"() ({
  "func.func"() <{function_type = (i1) -> (), sym_name = "invalid_unranked_memref_descriptor"}> ({
  ^bb0(%arg0: i1):
    %0 = "test.direct_replacement"(%arg0) : (i1) -> memref<*xf32>
    "test.legal_op"(%0) : (memref<*xf32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

