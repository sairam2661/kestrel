"builtin.module"() ({
  "func.func"() <{function_type = (i64, !llvm.ptr) -> (), sym_name = "construct_unranked_memref_descriptor"}> ({
  ^bb0(%arg0: i64, %arg1: !llvm.ptr):
    %0 = "test.direct_replacement"(%arg0, %arg1) : (i64, !llvm.ptr) -> memref<*xf32>
    "test.legal_op"(%0) : (memref<*xf32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

