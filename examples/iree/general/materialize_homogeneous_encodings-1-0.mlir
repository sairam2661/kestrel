#executable_target_vulkan_spirv_fb = #hal.executable.target<"vulkan-spirv", "vulkan-spirv-fb">
#map = affine_map<(d0, d1, d2) -> (d0, d2)>
#map1 = affine_map<(d0, d1, d2) -> (d2, d1)>
#map2 = affine_map<(d0, d1, d2) -> (d0, d1)>
#device_target_vulkan = #hal.device.target<"vulkan", [#executable_target_vulkan_spirv_fb]> : !hal.device
#encoding = #iree_encoding.encoding<operand_index = 0 : i64, op_type =  matmul, element_types = [f32, f32, f32], user_indexing_maps = [#map, #map1, #map2], iteration_sizes = [?, ?, ?]>
"builtin.module"() ({
  "util.func"() <{function_type = (tensor<?x?xf32>) -> tensor<?x?xf32>, sym_name = "lhs_encoding", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: tensor<?x?xf32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "tensor.dim"(%arg0, %0) : (tensor<?x?xf32>, index) -> index
    %3 = "tensor.dim"(%arg0, %1) : (tensor<?x?xf32>, index) -> index
    %4 = "iree_encoding.set_encoding"(%arg0) : (tensor<?x?xf32>) -> tensor<?x?xf32, #encoding>
    %5 = "iree_encoding.unset_encoding"(%4, %2, %3) : (tensor<?x?xf32, #encoding>, index, index) -> tensor<?x?xf32>
    "util.return"(%5) : (tensor<?x?xf32>) -> ()
  }) : () -> ()
}) {hal.device.targets = [#device_target_vulkan]} : () -> ()

