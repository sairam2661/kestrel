#map = affine_map<(d0) -> (d0)>
#pipeline_layout = #hal.pipeline.layout<constants = 3, bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "reshape_read_only"}> ({
    %0 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 0 : index}> : () -> index
    %1 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 1 : index}> : () -> index
    %2 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 2 : index}> : () -> index
    %3 = "hal.interface.binding.subspan"(%0, %1) <{binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 2>}> : (index, index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<?x?xf32>>
    %4 = "hal.interface.binding.subspan"(%2) <{binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 1>}> : (index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?xf32>>
    %5 = "iree_tensor_ext.dispatch.tensor.load"(%4, %2, %2) <{operandSegmentSizes = array<i32: 1, 1, 0, 1, 0>, static_offsets = array<i64: 0>, static_sizes = array<i64: -9223372036854775808>, static_strides = array<i64: 1>}> : (!iree_tensor_ext.dispatch.tensor<writeonly:tensor<?xf32>>, index, index) -> tensor<?xf32>
    %6 = "iree_tensor_ext.dispatch.tensor.load"(%3, %0, %1, %0, %1) <{operandSegmentSizes = array<i32: 1, 2, 0, 2, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: -9223372036854775808, -9223372036854775808>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<?x?xf32>>, index, index, index, index) -> tensor<?x?xf32>
    %7 = "tensor.collapse_shape"(%6) <{reassociation = [[0, 1]]}> : (tensor<?x?xf32>) -> tensor<?xf32>
    %8 = "linalg.generic"(%7, %5) <{indexing_maps = [#map, #map], iterator_types = [#linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg0: f32, %arg1: f32):
      %9 = "arith.addf"(%arg0, %arg0) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      "linalg.yield"(%9) : (f32) -> ()
    }) : (tensor<?xf32>, tensor<?xf32>) -> tensor<?xf32>
    "iree_tensor_ext.dispatch.tensor.store"(%8, %4, %2, %2) <{operandSegmentSizes = array<i32: 1, 1, 1, 0, 1, 0>, static_offsets = array<i64: 0>, static_sizes = array<i64: -9223372036854775808>, static_strides = array<i64: 1>}> : (tensor<?xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?xf32>>, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

