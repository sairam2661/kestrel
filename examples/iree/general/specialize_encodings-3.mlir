#executable_target_rocm_hsaco_fb = #hal.executable.target<"rocm", "rocm-hsaco-fb", {abi = "hip", iree.encoding.resolver = #iree_gpu.gpu_padding_resolver<>, iree_codegen.target_info = #iree_gpu.target<arch = "gfx942", features = "", wgp = <compute =  fp32, storage =  b32, subgroup =  none, mma = [<MFMA_F32_16x16x4_F32>], subgroup_size_choices = [64], max_workgroup_sizes = [1024, 1024, 1024], max_thread_count_per_workgroup = 1024, max_workgroup_memory_bytes = 65536, max_workgroup_counts = [2147483647, 2147483647, 2147483647]>>}>
#device_target_local_0_ = #hal.device.target<"local", {ordinal = 0 : index}, [#executable_target_rocm_hsaco_fb]> : !hal.device
"builtin.module"() ({
  "util.global"() <{initial_value = #device_target_local_0_, sym_name = "device_a", sym_visibility = "private", type = !hal.device}> : () -> ()
  "util.func"() <{function_type = (index, index) -> (), sym_name = "error_with_pad_encoding_using_pad_attr", sym_visibility = "public"}> ({
  ^bb0(%arg0: index, %arg1: index):
    %0 = "stream.tensor.empty"(%arg0, %arg1) <{affinity = #hal.device.affinity<@device_a>, result_encoding = tensor<2048x?xf16, #iree_encoding.padding<[0, ?]>>}> : (index, index) -> !stream.resource<*>
    %1 = "stream.tensor.empty"(%arg0, %arg1) <{affinity = #hal.device.affinity<@device_a>, result_encoding = tensor<?x2048xf16, #iree_encoding.padding<[64, ?]>>}> : (index, index) -> !stream.resource<*>
    "util.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

