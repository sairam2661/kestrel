"builtin.module"() ({
  "func.func"() <{function_type = (i1) -> (), sym_name = "invalid_ranked_memref_descriptor"}> ({
  ^bb0(%arg0: i1):
    %0 = "test.direct_replacement"(%arg0) : (i1) -> memref<5x4xf32>
    "test.legal_op"(%0) : (memref<5x4xf32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

