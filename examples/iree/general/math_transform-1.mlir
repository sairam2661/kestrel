#executable_target_xyz = #hal.executable.target<"llvm-cpu", "xyz", {target_triple = "x86_64-xyz-xyz"}>
"builtin.module"() ({
  "func.func"() <{function_type = (f16, f16) -> f16, sym_name = "rewrite_pow"}> ({
  ^bb0(%arg0: f16, %arg1: f16):
    %0 = "math.powf"(%arg0, %arg1) <{fastmath = #arith.fastmath<none>}> : (f16, f16) -> f16
    "func.return"(%0) : (f16) -> ()
  }) {hal.executable.target = #executable_target_xyz} : () -> ()
}) : () -> ()

