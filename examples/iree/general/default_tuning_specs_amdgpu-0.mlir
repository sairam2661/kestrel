#executable_target_rocm_hsaco_fb = #hal.executable.target<"rocm", "rocm-hsaco-fb", {iree_codegen.default_tuning_spec = #rocm.builtin.tuning_module<"iree_default_tuning_spec_gfx942.mlir">}>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "main_0"}> ({
    "func.return"() : () -> ()
  }) : () -> ()
}) {hal.executable.target = #executable_target_rocm_hsaco_fb} : () -> ()

