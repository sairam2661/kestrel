#map = affine_map<()[s0] -> (s0 * 32)>
#map1 = affine_map<()[s0] -> (s0 * 128)>
#map2 = affine_map<(d0, d1, d2) -> (d0, d2)>
#map3 = affine_map<(d0, d1, d2) -> (d2, d1)>
#map4 = affine_map<(d0, d1, d2) -> (d0, d1)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "matmul_multi_uses"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %2 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<2048x1024xf32>>
    %3 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<1024x512xf32>>
    %4 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 2 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<2048x512xf32>>
    %5 = "hal.interface.workgroup.id"() <{dimension = 0 : index}> : () -> index
    %6 = "hal.interface.workgroup.id"() <{dimension = 1 : index}> : () -> index
    %7 = "affine.apply"(%6) <{map = #map}> : (index) -> index
    %8 = "affine.apply"(%5) <{map = #map1}> : (index) -> index
    %9 = "iree_tensor_ext.dispatch.tensor.load"(%4, %7, %8) <{operandSegmentSizes = array<i32: 1, 0, 2, 0, 0>, static_offsets = array<i64: -9223372036854775808, -9223372036854775808>, static_sizes = array<i64: 32, 128>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<writeonly:tensor<2048x512xf32>>, index, index) -> tensor<32x128xf32>
    %10 = "iree_tensor_ext.dispatch.tensor.load"(%2, %7) <{operandSegmentSizes = array<i32: 1, 0, 1, 0, 0>, static_offsets = array<i64: -9223372036854775808, 0>, static_sizes = array<i64: 32, 1024>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<2048x1024xf32>>, index) -> tensor<32x1024xf32>
    %11 = "iree_tensor_ext.dispatch.tensor.load"(%3, %8) <{operandSegmentSizes = array<i32: 1, 0, 1, 0, 0>, static_offsets = array<i64: 0, -9223372036854775808>, static_sizes = array<i64: 1024, 128>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<1024x512xf32>>, index) -> tensor<1024x128xf32>
    %12 = "linalg.fill"(%1, %9) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg3: f32, %arg4: f32):
      "linalg.yield"(%arg3) : (f32) -> ()
    }) : (f32, tensor<32x128xf32>) -> tensor<32x128xf32>
    %13 = "linalg.matmul"(%10, %11, %12) <{indexing_maps = [#map2, #map3, #map4], operandSegmentSizes = array<i32: 2, 1>}> ({
    ^bb0(%arg0: f32, %arg1: f32, %arg2: f32):
      %14 = "arith.mulf"(%arg0, %arg1) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      %15 = "arith.addf"(%arg2, %14) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      "linalg.yield"(%15) : (f32) -> ()
    }) : (tensor<32x1024xf32>, tensor<1024x128xf32>, tensor<32x128xf32>) -> tensor<32x128xf32>
    "some_use"(%10) : (tensor<32x1024xf32>) -> ()
    "iree_tensor_ext.dispatch.tensor.store"(%13, %4, %7, %8) <{operandSegmentSizes = array<i32: 1, 1, 0, 2, 0, 0>, static_offsets = array<i64: -9223372036854775808, -9223372036854775808>, static_sizes = array<i64: 32, 128>, static_strides = array<i64: 1, 1>}> : (tensor<32x128xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<2048x512xf32>>, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

