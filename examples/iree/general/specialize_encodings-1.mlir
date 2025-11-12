#executable_target_rocm_hsaco_fb = #hal.executable.target<"rocm", "rocm-hsaco-fb", {abi = "hip", iree.encoding.resolver = #iree_gpu.gpu_encoding_resolver<>, iree_codegen.target_info = #iree_gpu.target<arch = "gfx942", features = "", wgp = <compute =  fp32, storage =  b32, subgroup =  none, mma = [<MFMA_F32_16x16x4_F32>], subgroup_size_choices = [64], max_workgroup_sizes = [1024, 1024, 1024], max_thread_count_per_workgroup = 1024, max_workgroup_memory_bytes = 65536, max_workgroup_counts = [2147483647, 2147483647, 2147483647], max_load_instruction_bits = 128, simds_per_wgp = 4, vgpr_space_bits = 16384>>}>
#map = affine_map<(d0, d1, d2) -> (d0, d2)>
#map1 = affine_map<(d0, d1, d2) -> (d2, d1)>
#map2 = affine_map<(d0, d1, d2) -> (d0, d1)>
#device_target_local_0_ = #hal.device.target<"local", {ordinal = 0 : index}, [#executable_target_rocm_hsaco_fb]> : !hal.device
#encoding = #iree_encoding.encoding<operand_index = 0 : index, op_type =  matmul, element_types = [f32, f32, f32], user_indexing_maps = [#map, #map1, #map2]>
"builtin.module"() ({
  "util.global"() <{initial_value = #device_target_local_0_, sym_name = "device_a", sym_visibility = "private", type = !hal.device}> : () -> ()
  "util.func"() <{function_type = (index, index) -> index, sym_name = "gpu_with_encoding_layout", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: index, %arg1: index):
    %0 = "stream.tensor.sizeof"(%arg0, %arg1) <{affinity = #hal.device.affinity<@device_a>, encoding = tensor<?x?xf32, #encoding>}> : (index, index) -> index
    "util.return"(%0) : (index) -> ()
  }) : () -> ()
}) : () -> ()

