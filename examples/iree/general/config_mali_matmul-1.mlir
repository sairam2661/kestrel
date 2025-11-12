#map = affine_map<(d0, d1, d2) -> (d0, d2)>
#map1 = affine_map<(d0, d1, d2) -> (d2, d1)>
#map2 = affine_map<(d0, d1, d2) -> (d0, d1)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "matmul_3136x24x96"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 24 : index}> : () -> index
    %2 = "arith.constant"() <{value = 3136 : index}> : () -> index
    %3 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %4 = "hal.interface.binding.subspan"() <{binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<3136x96xf32>>
    %5 = "hal.interface.binding.subspan"() <{binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<96x24xf32>>
    %6 = "hal.interface.binding.subspan"() <{binding = 2 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<3136x24xf32>>
    %7 = "iree_tensor_ext.dispatch.tensor.load"(%4) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 3136, 96>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<3136x96xf32>>) -> tensor<3136x96xf32>
    %8 = "iree_tensor_ext.dispatch.tensor.load"(%5) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 96, 24>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<96x24xf32>>) -> tensor<96x24xf32>
    %9 = "tensor.empty"() : () -> tensor<3136x24xf32>
    %10 = "linalg.fill"(%3, %9) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg3: f32, %arg4: f32):
      "linalg.yield"(%arg3) : (f32) -> ()
    }) : (f32, tensor<3136x24xf32>) -> tensor<3136x24xf32>
    %11 = "linalg.matmul"(%7, %8, %10) <{indexing_maps = [#map, #map1, #map2], operandSegmentSizes = array<i32: 2, 1>}> ({
    ^bb0(%arg0: f32, %arg1: f32, %arg2: f32):
      %12 = "arith.mulf"(%arg0, %arg1) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      %13 = "arith.addf"(%arg2, %12) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      "linalg.yield"(%13) : (f32) -> ()
    }) : (tensor<3136x96xf32>, tensor<96x24xf32>, tensor<3136x24xf32>) -> tensor<3136x24xf32>
    "iree_tensor_ext.dispatch.tensor.store"(%11, %6) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 3136, 24>, static_strides = array<i64: 1, 1>}> : (tensor<3136x24xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<3136x24xf32>>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

