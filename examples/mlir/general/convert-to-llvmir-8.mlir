"builtin.module"() ({
  "func.func"() <{function_type = (!llvm.ptr) -> (), sym_name = "threadprivate"}> ({
  ^bb0(%arg0: !llvm.ptr):
    %0 = "omp.threadprivate"(%arg0) : (!llvm.ptr) -> !llvm.ptr
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

