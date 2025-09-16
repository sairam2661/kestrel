"builtin.module"() ({
  "func.func"() <{function_type = (!llvm.ptr<1>) -> (), sym_name = "prefetch"}> ({
  ^bb0(%arg0: !llvm.ptr<1>):
    "xevm.prefetch"(%arg0) <{cache_control = #xevm.load_cache_control<L1uc_L2uc_L3uc>}> : (!llvm.ptr<1>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

