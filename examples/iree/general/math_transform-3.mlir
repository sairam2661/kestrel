#executable_target_rocm_hsaco_fb = #hal.executable.target<"rocm", "rocm-hsaco-fb", {target_triple = "amdgcn-amd-amdhsa"}>
"builtin.module"() ({
  "func.func"() <{function_type = (f32) -> f32, sym_name = "erf_fastmath"}> ({
  ^bb0(%arg0: f32):
    %0 = "math.erf"(%arg0) <{fastmath = #arith.fastmath<none>}> : (f32) -> f32
    "func.return"(%0) : (f32) -> ()
  }) {hal.executable.target = #executable_target_rocm_hsaco_fb} : () -> ()
}) : () -> ()

