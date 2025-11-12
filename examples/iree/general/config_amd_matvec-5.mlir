#map = affine_map<(d0, d1, d2) -> (d0, d1, d2)>
#map1 = affine_map<(d0, d1, d2) -> (d0, d1)>
#map2 = affine_map<(d0, d1, d2, d3) -> (d0, d2, d3)>
#map3 = affine_map<(d0, d1, d2, d3) -> (d1, d2, d3)>
#map4 = affine_map<(d0, d1, d2, d3) -> (d0, d1)>
#pipeline_layout = #hal.pipeline.layout<constants = 7, bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "i4_dequant_matvec"}> ({
    %0 = "arith.constant"() <{value = 32 : i64}> : () -> i64
    %1 = "arith.constant"() <{value = 0.000000e+00 : f16}> : () -> f16
    %2 = "arith.constant"() <{value = 0 : index}> : () -> index
    %3 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 0 : index}> : () -> i32
    %4 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 1 : index}> : () -> i32
    %5 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 2 : index}> : () -> i32
    %6 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 3 : index}> : () -> i32
    %7 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 4 : index}> : () -> i32
    %8 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 5 : index}> : () -> i32
    %9 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 6 : index}> : () -> i32
    %10 = "arith.index_castui"(%3) : (i32) -> index
    %11 = "arith.index_castui"(%4) : (i32) -> index
    %12 = "arith.index_castui"(%5) : (i32) -> index
    %13 = "arith.extui"(%6) : (i32) -> i64
    %14 = "arith.extui"(%7) : (i32) -> i64
    %15 = "arith.shli"(%14, %0) <{overflowFlags = #arith.overflow<none>}> : (i64, i64) -> i64
    %16 = "arith.ori"(%13, %15) : (i64, i64) -> i64
    %17 = "arith.index_castui"(%16) : (i64) -> index
    %18 = "arith.extui"(%8) : (i32) -> i64
    %19 = "arith.extui"(%9) : (i32) -> i64
    %20 = "arith.shli"(%19, %0) <{overflowFlags = #arith.overflow<none>}> : (i64, i64) -> i64
    %21 = "arith.ori"(%18, %20) : (i64, i64) -> i64
    %22 = "arith.index_castui"(%21) : (i64) -> index
    %23 = "hal.interface.binding.subspan"(%10) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<11008x32x128xi4>>
    %24 = "hal.interface.binding.subspan"(%11) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<11008x32xf16>>
    %25 = "hal.interface.binding.subspan"(%12) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<11008x32xf16>>
    %26 = "iree_tensor_ext.dispatch.workload.ordinal"(%22) <{ordinal = 0 : index}> : (index) -> index
    %27 = "hal.interface.binding.subspan"(%2, %26) <{alignment = 64 : index, binding = 1 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 1>}> : (index, index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<?x32x128xf16>>
    %28 = "hal.interface.binding.subspan"(%17, %26) <{alignment = 64 : index, binding = 2 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 1>}> : (index, index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?x11008xf16>>
    %29 = "iree_tensor_ext.dispatch.tensor.load"(%23) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0>, static_sizes = array<i64: 11008, 32, 128>, static_strides = array<i64: 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<11008x32x128xi4>>) -> tensor<11008x32x128xi4>
    %30 = "iree_tensor_ext.dispatch.tensor.load"(%24) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 11008, 32>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<11008x32xf16>>) -> tensor<11008x32xf16>
    %31 = "iree_tensor_ext.dispatch.tensor.load"(%25) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 11008, 32>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<11008x32xf16>>) -> tensor<11008x32xf16>
    %32 = "iree_tensor_ext.dispatch.tensor.load"(%27, %26, %26) <{operandSegmentSizes = array<i32: 1, 1, 0, 1, 0>, static_offsets = array<i64: 0, 0, 0>, static_sizes = array<i64: -9223372036854775808, 32, 128>, static_strides = array<i64: 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<?x32x128xf16>>, index, index) -> tensor<?x32x128xf16>
    %33 = "tensor.empty"() : () -> tensor<11008x32x128xf16>
    %34 = "tensor.empty"(%26) : (index) -> tensor<?x11008xf16>
    %35 = "linalg.fill"(%1, %34) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg7: f16, %arg8: f16):
      "linalg.yield"(%arg7) : (f16) -> ()
    }) : (f16, tensor<?x11008xf16>) -> tensor<?x11008xf16>
    %36 = "linalg.generic"(%29, %30, %31, %33) <{indexing_maps = [#map, #map1, #map1, #map], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 3, 1>}> ({
    ^bb0(%arg3: i4, %arg4: f16, %arg5: f16, %arg6: f16):
      %40 = "arith.extui"(%arg3) : (i4) -> i32
      %41 = "arith.uitofp"(%40) : (i32) -> f16
      %42 = "arith.subf"(%41, %arg5) <{fastmath = #arith.fastmath<none>}> : (f16, f16) -> f16
      %43 = "arith.mulf"(%42, %arg4) <{fastmath = #arith.fastmath<none>}> : (f16, f16) -> f16
      "linalg.yield"(%43) : (f16) -> ()
    }) : (tensor<11008x32x128xi4>, tensor<11008x32xf16>, tensor<11008x32xf16>, tensor<11008x32x128xf16>) -> tensor<11008x32x128xf16>
    %37 = "linalg.generic"(%32, %36, %35) <{indexing_maps = [#map2, #map3, #map4], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<reduction>, #linalg.iterator_type<reduction>], operandSegmentSizes = array<i32: 2, 1>}> ({
    ^bb0(%arg0: f16, %arg1: f16, %arg2: f16):
      %38 = "arith.mulf"(%arg0, %arg1) <{fastmath = #arith.fastmath<none>}> : (f16, f16) -> f16
      %39 = "arith.addf"(%38, %arg2) <{fastmath = #arith.fastmath<none>}> : (f16, f16) -> f16
      "linalg.yield"(%39) : (f16) -> ()
    }) : (tensor<?x32x128xf16>, tensor<11008x32x128xf16>, tensor<?x11008xf16>) -> tensor<?x11008xf16>
    "iree_tensor_ext.dispatch.tensor.store"(%37, %28, %26, %26) <{operandSegmentSizes = array<i32: 1, 1, 1, 0, 1, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: -9223372036854775808, 11008>, static_strides = array<i64: 1, 1>}> : (tensor<?x11008xf16>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?x11008xf16>>, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

