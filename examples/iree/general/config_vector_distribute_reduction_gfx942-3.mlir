#map = affine_map<(d0, d1, d2, d3) -> (d0, d2, d3)>
#map1 = affine_map<(d0, d1, d2, d3) -> (d0, d2, d3, d1)>
#map2 = affine_map<(d0, d1, d2, d3) -> (d0, d1)>
#pipeline_layout = #hal.pipeline.layout<constants = 4, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
"builtin.module"() ({
  "func.func"() <{function_type = (!iree_tensor_ext.dispatch.tensor<readwrite:tensor<128x128xf32>>, index) -> (), sym_name = "test_dyn_reduction"}> ({
  ^bb0(%arg0: !iree_tensor_ext.dispatch.tensor<readwrite:tensor<128x128xf32>>, %arg1: index):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "hal.interface.binding.subspan"(%0, %arg1) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 3 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 1>}> : (index, index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<128x?x32xf8E4M3FNUZ>>
    %2 = "hal.interface.binding.subspan"(%0, %arg1) <{alignment = 64 : index, binding = 1 : index, descriptor_flags = 3 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 1>}> : (index, index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<128x?x32x128xf8E4M3FNUZ>>
    %3 = "iree_tensor_ext.dispatch.tensor.load"(%arg0) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 128, 128>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readwrite:tensor<128x128xf32>>) -> tensor<128x128xf32>
    %4 = "iree_tensor_ext.dispatch.tensor.load"(%1, %arg1, %arg1) <{operandSegmentSizes = array<i32: 1, 1, 0, 1, 0>, static_offsets = array<i64: 0, 0, 0>, static_sizes = array<i64: 128, -9223372036854775808, 32>, static_strides = array<i64: 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<128x?x32xf8E4M3FNUZ>>, index, index) -> tensor<128x?x32xf8E4M3FNUZ>
    %5 = "iree_tensor_ext.dispatch.tensor.load"(%2, %arg1, %arg1) <{operandSegmentSizes = array<i32: 1, 1, 0, 1, 0>, static_offsets = array<i64: 0, 0, 0, 0>, static_sizes = array<i64: 128, -9223372036854775808, 32, 128>, static_strides = array<i64: 1, 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<128x?x32x128xf8E4M3FNUZ>>, index, index) -> tensor<128x?x32x128xf8E4M3FNUZ>
    %6 = "linalg.generic"(%4, %5, %3) <{indexing_maps = [#map, #map1, #map2], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<reduction>, #linalg.iterator_type<reduction>], operandSegmentSizes = array<i32: 2, 1>}> ({
    ^bb0(%arg2: f8E4M3FNUZ, %arg3: f8E4M3FNUZ, %arg4: f32):
      %7 = "arith.extf"(%arg2) : (f8E4M3FNUZ) -> f32
      %8 = "arith.extf"(%arg3) : (f8E4M3FNUZ) -> f32
      %9 = "arith.mulf"(%7, %8) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      %10 = "arith.addf"(%arg4, %9) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      "linalg.yield"(%10) : (f32) -> ()
    }) {lowering_config = #iree_gpu.lowering_config<{lane_basis = [[1, 1, 1, 2], [0, 1, 2, 3]], partial_reduction = [0, 0, 1, 32], subgroup_basis = [[1, 1, 1, 1], [0, 1, 2, 3]], thread = [0, 0, 1, 16], workgroup = [1, 1, 0, 0]}>} : (tensor<128x?x32xf8E4M3FNUZ>, tensor<128x?x32x128xf8E4M3FNUZ>, tensor<128x128xf32>) -> tensor<128x128xf32>
    "iree_tensor_ext.dispatch.tensor.store"(%6, %arg0) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 128, 128>, static_strides = array<i64: 1, 1>}> : (tensor<128x128xf32>, !iree_tensor_ext.dispatch.tensor<readwrite:tensor<128x128xf32>>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

