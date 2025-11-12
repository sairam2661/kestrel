#map = affine_map<(d0, d1, d2) -> (d0, d2)>
#map1 = affine_map<(d0, d1, d2) -> (d2, d1)>
#map2 = affine_map<(d0, d1, d2) -> (d0, d1)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "matmul_2x1024x576"}> ({
    %0 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %1 = "arith.constant"() <{value = 3.000000e+00 : f32}> : () -> f32
    %2 = "arith.constant"() <{value = 6.000000e+00 : f32}> : () -> f32
    %3 = "arith.constant"() <{value = 0.166666672 : f32}> : () -> f32
    %4 = "arith.constant"() <{value = 0 : index}> : () -> index
    %5 = "arith.constant"() <{value = 3436864 : index}> : () -> index
    %6 = "arith.constant"() <{value = 10141312 : index}> : () -> index
    %7 = "arith.constant"() <{value = 2304 : index}> : () -> index
    %8 = "hal.interface.binding.subspan"(%4) <{alignment = 64 : index, binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<2x576xf32>>
    %9 = "hal.interface.binding.subspan"(%5) <{alignment = 64 : index, binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<576x1024xf32>>
    %10 = "hal.interface.binding.subspan"(%6) <{alignment = 64 : index, binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<2x1024xf32>>
    %11 = "hal.interface.binding.subspan"(%4) <{alignment = 64 : index, binding = 2 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<2x1024xf32>>
    %12 = "iree_tensor_ext.dispatch.tensor.load"(%8) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 1, 576>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<2x576xf32>>) -> tensor<2x576xf32>
    %13 = "iree_tensor_ext.dispatch.tensor.load"(%9) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 576, 1024>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<576x1024xf32>>) -> tensor<576x1024xf32>
    %14 = "iree_tensor_ext.dispatch.tensor.load"(%10) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 1, 1024>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<2x1024xf32>>) -> tensor<2x1024xf32>
    %15 = "tensor.empty"() : () -> tensor<2x1024xf32>
    %16 = "linalg.fill"(%0, %15) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg3: f32, %arg4: f32):
      "linalg.yield"(%arg3) : (f32) -> ()
    }) : (f32, tensor<2x1024xf32>) -> tensor<2x1024xf32>
    %17 = "linalg.matmul"(%12, %13, %16) <{indexing_maps = [#map, #map1, #map2], operandSegmentSizes = array<i32: 2, 1>}> ({
    ^bb0(%arg0: f32, %arg1: f32, %arg2: f32):
      %18 = "arith.mulf"(%arg0, %arg1) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      %19 = "arith.addf"(%arg2, %18) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      "linalg.yield"(%19) : (f32) -> ()
    }) : (tensor<2x576xf32>, tensor<576x1024xf32>, tensor<2x1024xf32>) -> tensor<2x1024xf32>
    "iree_tensor_ext.dispatch.tensor.store"(%17, %11) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 2, 1024>, static_strides = array<i64: 1, 1>}> : (tensor<2x1024xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<2x1024xf32>>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

