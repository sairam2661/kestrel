#executable_target_rocm_hsaco_fb = #hal.executable.target<"rocm", "rocm-hsaco-fb", {abi = "hip", iree_codegen.target_info = #iree_gpu.target<arch = "gfx950", features = "", wgp = <compute =  fp64|fp32|fp16|int64|int32|int16|int8, storage =  b64|b32|b16|b8, subgroup =  shuffle|arithmetic, dot =  dp4xi8toi32, subgroup_size_choices = [64], max_workgroup_sizes = [1024, 1024, 1024], max_thread_count_per_workgroup = 1024, max_workgroup_memory_bytes = 65536, max_workgroup_counts = [2147483647, 2147483647, 2147483647], max_load_instruction_bits = 128, simds_per_wgp = 4, vgpr_space_bits = 16384>>, ukernels = "none"}>
"builtin.module"() ({
  "func.func"() <{function_type = (f8E4M3FN) -> f8E4M3FN, sym_name = "negf_f8_unsupported_ocp"}> ({
  ^bb0(%arg0: f8E4M3FN):
    %0 = "arith.negf"(%arg0) <{fastmath = #arith.fastmath<none>}> : (f8E4M3FN) -> f8E4M3FN
    "func.return"(%0) : (f8E4M3FN) -> ()
  }) {hal.executable.target = #executable_target_rocm_hsaco_fb} : () -> ()
}) : () -> ()

