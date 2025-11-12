#executable_target_xyz = #hal.executable.target<"llvm-cpu", "xyz", {target_triple = "x86_64-xyz-xyz"}>
"builtin.module"() ({
  "func.func"() <{function_type = (f16) -> f16, sym_name = "rewrite_tan"}> ({
  ^bb0(%arg0: f16):
    %0 = "math.tan"(%arg0) <{fastmath = #arith.fastmath<none>}> : (f16) -> f16
    "func.return"(%0) : (f16) -> ()
  }) {hal.executable.target = #executable_target_xyz} : () -> ()
}) : () -> ()

