#map = affine_map<()[s0] -> (s0 * 64)>
#map1 = affine_map<(d0) -> (d0)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "sub_byte_bufferize_with_offset"}> ({
    %0 = "arith.constant"() <{value = 64 : index}> : () -> index
    %1 = "arith.constant"() <{value = 0 : index}> : () -> index
    %2 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<64xi4>>
    %3 = "hal.interface.binding.subspan"(%1) <{alignment = 64 : index, binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<64xf32>>
    %4 = "hal.interface.workgroup.id"() <{dimension = 0 : index}> : () -> index
    %5 = "affine.apply"(%4) <{map = #map}> : (index) -> index
    %6 = "iree_tensor_ext.dispatch.tensor.load"(%3, %5) <{operandSegmentSizes = array<i32: 1, 0, 1, 0, 0>, static_offsets = array<i64: -9223372036854775808>, static_sizes = array<i64: 64>, static_strides = array<i64: 1>}> : (!iree_tensor_ext.dispatch.tensor<writeonly:tensor<64xf32>>, index) -> tensor<64xf32>
    %7 = "iree_tensor_ext.dispatch.tensor.load"(%2, %5) <{operandSegmentSizes = array<i32: 1, 0, 1, 0, 0>, static_offsets = array<i64: -9223372036854775808>, static_sizes = array<i64: 64>, static_strides = array<i64: 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<64xi4>>, index) -> tensor<64xi4>
    %8 = "linalg.generic"(%7, %6) <{indexing_maps = [#map1, #map1], iterator_types = [#linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg0: i4, %arg1: f32):
      %9 = "arith.extui"(%arg0) : (i4) -> i32
      %10 = "arith.uitofp"(%9) : (i32) -> f32
      "linalg.yield"(%10) : (f32) -> ()
    }) : (tensor<64xi4>, tensor<64xf32>) -> tensor<64xf32>
    "iree_tensor_ext.dispatch.tensor.store"(%8, %3, %5) <{operandSegmentSizes = array<i32: 1, 1, 0, 1, 0, 0>, static_offsets = array<i64: -9223372036854775808>, static_sizes = array<i64: 64>, static_strides = array<i64: 1>}> : (tensor<64xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<64xf32>>, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

