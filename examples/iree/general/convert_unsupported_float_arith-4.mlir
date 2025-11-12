#executable_target_xyz = #hal.executable.target<"llvm-cpu", "xyz", {target_triple = "x86_64-xyz-xyz"}>
"builtin.module"() ({
  "func.func"() <{function_type = (f8E4M3FNUZ) -> f8E4M3FNUZ, sym_name = "dont_expand_cpu_target"}> ({
  ^bb0(%arg0: f8E4M3FNUZ):
    %0 = "arith.negf"(%arg0) <{fastmath = #arith.fastmath<none>}> : (f8E4M3FNUZ) -> f8E4M3FNUZ
    "func.return"(%0) : (f8E4M3FNUZ) -> ()
  }) {hal.executable.target = #executable_target_xyz} : () -> ()
}) : () -> ()

