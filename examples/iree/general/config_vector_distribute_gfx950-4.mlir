#map = affine_map<(d0, d1, d2) -> (d0, d2)>
#map1 = affine_map<(d0, d1, d2) -> (d2, d1)>
#map2 = affine_map<(d0, d1, d2) -> (d0, d1)>
#pipeline_layout = #hal.pipeline.layout<constants = 2, bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "matmul_dynamic_dim"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 32 : i64}> : () -> i64
    %2 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %3 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 0 : index}> : () -> i32
    %4 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 1 : index}> : () -> i32
    %5 = "arith.extui"(%3) : (i32) -> i64
    %6 = "arith.extui"(%4) : (i32) -> i64
    %7 = "arith.shli"(%6, %1) <{overflowFlags = #arith.overflow<none>}> : (i64, i64) -> i64
    %8 = "arith.ori"(%5, %7) : (i64, i64) -> i64
    %9 = "arith.index_castui"(%8) : (i64) -> index
    %10 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 1 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<256x256xf16>>
    %11 = "iree_tensor_ext.dispatch.workload.ordinal"(%9) <{ordinal = 0 : index}> : (index) -> index
    %12 = "hal.interface.binding.subspan"(%0, %11) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 1>}> : (index, index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<?x256xf16>>
    %13 = "hal.interface.binding.subspan"(%0, %11) <{alignment = 64 : index, binding = 2 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 1>}> : (index, index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?x256xf32>>
    %14 = "iree_tensor_ext.dispatch.tensor.load"(%12, %11, %11) <{operandSegmentSizes = array<i32: 1, 1, 0, 1, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: -9223372036854775808, 256>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<?x256xf16>>, index, index) -> tensor<?x256xf16>
    %15 = "iree_tensor_ext.dispatch.tensor.load"(%10) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 256, 256>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<256x256xf16>>) -> tensor<256x256xf16>
    %16 = "tensor.empty"(%11) : (index) -> tensor<?x256xf32>
    %17 = "linalg.fill"(%2, %16) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg3: f32, %arg4: f32):
      "linalg.yield"(%arg3) : (f32) -> ()
    }) : (f32, tensor<?x256xf32>) -> tensor<?x256xf32>
    %18 = "linalg.matmul"(%14, %15, %17) <{indexing_maps = [#map, #map1, #map2], operandSegmentSizes = array<i32: 2, 1>}> ({
    ^bb0(%arg0: f16, %arg1: f16, %arg2: f32):
      %19 = "arith.extf"(%arg0) : (f16) -> f32
      %20 = "arith.extf"(%arg1) : (f16) -> f32
      %21 = "arith.mulf"(%19, %20) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      %22 = "arith.addf"(%arg2, %21) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      "linalg.yield"(%22) : (f32) -> ()
    }) : (tensor<?x256xf16>, tensor<256x256xf16>, tensor<?x256xf32>) -> tensor<?x256xf32>
    "iree_tensor_ext.dispatch.tensor.store"(%18, %13, %11, %11) <{operandSegmentSizes = array<i32: 1, 1, 1, 0, 1, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: -9223372036854775808, 256>, static_strides = array<i64: 1, 1>}> : (tensor<?x256xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?x256xf32>>, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

