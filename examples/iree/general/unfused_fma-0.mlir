"builtin.module"() ({
  "func.func"() <{function_type = (f32, f32, f32) -> f32, sym_name = "fma_unfused"}> ({
  ^bb0(%arg0: f32, %arg1: f32, %arg2: f32):
    %0 = "llvm.intr.fma"(%arg0, %arg1, %arg2) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32, f32) -> f32
    "func.return"(%0) : (f32) -> ()
  }) : () -> ()
}) : () -> ()

