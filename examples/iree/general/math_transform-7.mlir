#executable_target_rocm_hsaco_fb = #hal.executable.target<"rocm", "rocm-hsaco-fb">
"builtin.module"() ({
  "func.func"() <{function_type = (f32) -> f32, sym_name = "rewrite_fpowi_const_exponent_on_rocm"}> ({
  ^bb0(%arg0: f32):
    %0 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %1 = "math.fpowi"(%arg0, %0) <{fastmath = #arith.fastmath<none>}> : (f32, i32) -> f32
    "func.return"(%1) : (f32) -> ()
  }) {hal.executable.target = #executable_target_rocm_hsaco_fb} : () -> ()
}) : () -> ()

