#executable_target_vmvx_bytecode_fb = #hal.executable.target<"vmvx", "vmvx-bytecode-fb", {iree.encoding.resolver = #iree_cpu.vmvx_encoding_resolver<>}>
#executable_target_xyz = #hal.executable.target<"llvm-cpu", "xyz", {cpu_features = "+avx512f", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, target_triple = "x86_64-xyz-xyz"}>
#executable_target_xyz1 = #hal.executable.target<"llvm-cpu", "xyz", {cpu_features = "+sve", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, target_triple = "aarch64-xyz-xyz"}>
#map = affine_map<(d0, d1, d2) -> (d0, d2)>
#map1 = affine_map<(d0, d1, d2) -> (d2, d1)>
#map2 = affine_map<(d0, d1, d2) -> (d0, d1)>
#device_target_local_0_ = #hal.device.target<"local", {ordinal = 0 : index}, [#executable_target_vmvx_bytecode_fb]> : !hal.device
#device_target_local_1_ = #hal.device.target<"local", {ordinal = 1 : index}, [#executable_target_xyz]> : !hal.device
#device_target_local_2_ = #hal.device.target<"local", {ordinal = 2 : index}, [#executable_target_xyz1]> : !hal.device
#encoding = #iree_encoding.encoding<operand_index = 0 : index, op_type =  matmul, element_types = [f32, f32, f32], user_indexing_maps = [#map, #map1, #map2]>
"builtin.module"() ({
  "util.global"() <{initial_value = #device_target_local_0_, sym_name = "device_a", sym_visibility = "private", type = !hal.device}> : () -> ()
  "util.global"() <{initial_value = #device_target_local_1_, sym_name = "device_b", sym_visibility = "private", type = !hal.device}> : () -> ()
  "util.global"() <{initial_value = #device_target_local_2_, sym_name = "device_c", sym_visibility = "private", type = !hal.device}> : () -> ()
  "util.func"() <{function_type = (index, index) -> (index, index, index), sym_name = "tensor_sizeof", sym_visibility = "public", tied_operands = [-1 : index, -1 : index, -1 : index]}> ({
  ^bb0(%arg0: index, %arg1: index):
    %0 = "stream.tensor.sizeof"(%arg0, %arg1) <{affinity = #hal.device.affinity<@device_a>, encoding = tensor<?x?xf32, #encoding>}> : (index, index) -> index
    %1 = "stream.tensor.sizeof"(%arg0, %arg1) <{affinity = #hal.device.affinity<@device_b>, encoding = tensor<?x?xf32, #encoding>}> : (index, index) -> index
    %2 = "stream.tensor.sizeof"(%arg0, %arg1) <{affinity = #hal.device.affinity<@device_c>, encoding = tensor<?x?xf32, #encoding>}> : (index, index) -> index
    "util.return"(%0, %1, %2) : (index, index, index) -> ()
  }) : () -> ()
}) : () -> ()

