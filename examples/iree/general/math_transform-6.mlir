#executable_target_xyz = #hal.executable.target<"llvm-cpu", "xyz", {target_triple = "x86_64-xyz-xyz"}>
"builtin.module"() ({
  "func.func"() <{function_type = (f32) -> f32, sym_name = "rewrite_fpowi_const_exponent_on_llvmcpu"}> ({
  ^bb0(%arg0: f32):
    %0 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %1 = "math.fpowi"(%arg0, %0) <{fastmath = #arith.fastmath<none>}> : (f32, i32) -> f32
    "func.return"(%1) : (f32) -> ()
  }) {hal.executable.target = #executable_target_xyz} : () -> ()
}) : () -> ()

