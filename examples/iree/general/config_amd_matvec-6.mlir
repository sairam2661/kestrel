#map = affine_map<(d0, d1, d2, d3) -> (d0, d1, d3)>
#map1 = affine_map<(d0, d1, d2, d3) -> (d0, d3, d2)>
#map2 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>
#pipeline_layout = #hal.pipeline.layout<constants = 5, bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "dynamic_batch_matvec"}> ({
    %0 = "arith.constant"() <{value = 32 : i64}> : () -> i64
    %1 = "arith.constant"() <{value = 0.000000e+00 : f16}> : () -> f16
    %2 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 0 : index}> : () -> i32
    %3 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 1 : index}> : () -> i32
    %4 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 2 : index}> : () -> i32
    %5 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 3 : index}> : () -> i32
    %6 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 4 : index}> : () -> i32
    %7 = "arith.index_castui"(%2) : (i32) -> index
    %8 = "arith.index_castui"(%3) : (i32) -> index
    %9 = "arith.index_castui"(%4) : (i32) -> index
    %10 = "arith.index_castui"(%5) : (i32) -> index
    %11 = "arith.index_castui"(%6) : (i32) -> index
    %12 = "hal.interface.binding.subspan"(%9) <{alignment = 64 : index, binding = 2 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<32x1x128xf16>>
    %13 = "iree_tensor_ext.dispatch.workload.ordinal"(%10) <{ordinal = 0 : index}> : (index) -> index
    %14 = "iree_tensor_ext.dispatch.workload.ordinal"(%11) <{ordinal = 1 : index}> : (index) -> index
    %15 = "hal.interface.binding.subspan"(%7, %13) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 1>}> : (index, index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<32x1x?xf16>>
    %16 = "hal.interface.binding.subspan"(%8, %14) <{alignment = 64 : index, binding = 1 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 1>}> : (index, index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<32x?x128xf16>>
    %17 = "iree_tensor_ext.dispatch.tensor.load"(%15, %13, %13) <{operandSegmentSizes = array<i32: 1, 1, 0, 1, 0>, static_offsets = array<i64: 0, 0, 0>, static_sizes = array<i64: 32, 1, -9223372036854775808>, static_strides = array<i64: 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<32x1x?xf16>>, index, index) -> tensor<32x1x?xf16>
    %18 = "iree_tensor_ext.dispatch.tensor.load"(%16, %14, %14) <{operandSegmentSizes = array<i32: 1, 1, 0, 1, 0>, static_offsets = array<i64: 0, 0, 0>, static_sizes = array<i64: 32, -9223372036854775808, 128>, static_strides = array<i64: 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<32x?x128xf16>>, index, index) -> tensor<32x?x128xf16>
    %19 = "tensor.empty"() : () -> tensor<32x1x128xf16>
    %20 = "linalg.fill"(%1, %19) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg3: f16, %arg4: f16):
      "linalg.yield"(%arg3) : (f16) -> ()
    }) : (f16, tensor<32x1x128xf16>) -> tensor<32x1x128xf16>
    %21 = "linalg.batch_matmul"(%17, %18, %20) <{indexing_maps = [#map, #map1, #map2], operandSegmentSizes = array<i32: 2, 1>}> ({
    ^bb0(%arg0: f16, %arg1: f16, %arg2: f16):
      %22 = "arith.mulf"(%arg0, %arg1) <{fastmath = #arith.fastmath<none>}> : (f16, f16) -> f16
      %23 = "arith.addf"(%arg2, %22) <{fastmath = #arith.fastmath<none>}> : (f16, f16) -> f16
      "linalg.yield"(%23) : (f16) -> ()
    }) : (tensor<32x1x?xf16>, tensor<32x?x128xf16>, tensor<32x1x128xf16>) -> tensor<32x1x128xf16>
    "iree_tensor_ext.dispatch.tensor.store"(%21, %12) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0>, static_sizes = array<i64: 32, 1, 128>, static_strides = array<i64: 1, 1, 1>}> : (tensor<32x1x128xf16>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<32x1x128xf16>>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

