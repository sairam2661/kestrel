#executable_target_rocm_hsaco_fb = #hal.executable.target<"rocm", "rocm-hsaco-fb", {target_triple = "amdgcn-amd-amdhsa"}>
"builtin.module"() ({
  "func.func"() <{function_type = (vector<4xf32>) -> vector<4xf32>, sym_name = "erf_fastmath_vector"}> ({
  ^bb0(%arg0: vector<4xf32>):
    %0 = "math.erf"(%arg0) <{fastmath = #arith.fastmath<none>}> : (vector<4xf32>) -> vector<4xf32>
    "func.return"(%0) : (vector<4xf32>) -> ()
  }) {hal.executable.target = #executable_target_rocm_hsaco_fb} : () -> ()
}) : () -> ()

