"builtin.module"() ({
  "func.func"() <{function_type = (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64) -> (), sym_name = "construct_ranked_memref_descriptor"}> ({
  ^bb0(%arg0: !llvm.ptr, %arg1: !llvm.ptr, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64):
    %0 = "test.direct_replacement"(%arg0, %arg1, %arg2, %arg3, %arg4, %arg5, %arg6) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64) -> memref<5x4xf32>
    "test.legal_op"(%0) : (memref<5x4xf32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

