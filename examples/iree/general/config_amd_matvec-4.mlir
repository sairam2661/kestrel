#map = affine_map<(d0, d1, d2) -> (d0, d1, d2)>
#map1 = affine_map<(d0, d1, d2) -> (d0, d1)>
#map2 = affine_map<(d0, d1, d2, d3) -> (d0, d2, d3)>
#map3 = affine_map<(d0, d1, d2, d3) -> (d1, d2, d3)>
#map4 = affine_map<(d0, d1, d2, d3) -> (d0, d1)>
#pipeline_layout = #hal.pipeline.layout<constants = 9, bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "i4_dequant_matvec"}> ({
    %0 = "arith.constant"() <{value = 32 : i64}> : () -> i64
    %1 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %2 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 0 : index}> : () -> i32
    %3 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 1 : index}> : () -> i32
    %4 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 2 : index}> : () -> i32
    %5 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 3 : index}> : () -> i32
    %6 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 4 : index}> : () -> i32
    %7 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 5 : index}> : () -> i32
    %8 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 6 : index}> : () -> i32
    %9 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 7 : index}> : () -> i32
    %10 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 8 : index}> : () -> i32
    %11 = "arith.index_castui"(%2) : (i32) -> index
    %12 = "arith.index_castui"(%3) : (i32) -> index
    %13 = "arith.index_castui"(%4) : (i32) -> index
    %14 = "arith.extui"(%5) : (i32) -> i64
    %15 = "arith.extui"(%6) : (i32) -> i64
    %16 = "arith.shli"(%15, %0) <{overflowFlags = #arith.overflow<none>}> : (i64, i64) -> i64
    %17 = "arith.ori"(%14, %16) : (i64, i64) -> i64
    %18 = "arith.index_castui"(%17) : (i64) -> index
    %19 = "arith.extui"(%7) : (i32) -> i64
    %20 = "arith.extui"(%8) : (i32) -> i64
    %21 = "arith.shli"(%20, %0) <{overflowFlags = #arith.overflow<none>}> : (i64, i64) -> i64
    %22 = "arith.ori"(%19, %21) : (i64, i64) -> i64
    %23 = "arith.index_castui"(%22) : (i64) -> index
    %24 = "arith.extui"(%9) : (i32) -> i64
    %25 = "arith.extui"(%10) : (i32) -> i64
    %26 = "arith.shli"(%25, %0) <{overflowFlags = #arith.overflow<none>}> : (i64, i64) -> i64
    %27 = "arith.ori"(%24, %26) : (i64, i64) -> i64
    %28 = "arith.index_castui"(%27) : (i64) -> index
    %29 = "hal.interface.binding.subspan"(%11) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<4096x86x128xi4>>
    %30 = "hal.interface.binding.subspan"(%12) <{alignment = 64 : index, binding = 1 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<4096x86xf32>>
    %31 = "hal.interface.binding.subspan"(%13) <{alignment = 64 : index, binding = 1 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<4096x86xf32>>
    %32 = "iree_tensor_ext.dispatch.workload.ordinal"(%28) <{ordinal = 0 : index}> : (index) -> index
    %33 = "hal.interface.binding.subspan"(%18, %32) <{alignment = 64 : index, binding = 2 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 1>}> : (index, index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<?x86x128xf32>>
    %34 = "hal.interface.binding.subspan"(%23, %32) <{alignment = 64 : index, binding = 3 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 1>}> : (index, index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?x4096xf32>>
    %35 = "iree_tensor_ext.dispatch.tensor.load"(%29) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0>, static_sizes = array<i64: 4096, 86, 128>, static_strides = array<i64: 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<4096x86x128xi4>>) -> tensor<4096x86x128xi4>
    %36 = "iree_tensor_ext.dispatch.tensor.load"(%30) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 4096, 86>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<4096x86xf32>>) -> tensor<4096x86xf32>
    %37 = "iree_tensor_ext.dispatch.tensor.load"(%31) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 4096, 86>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<4096x86xf32>>) -> tensor<4096x86xf32>
    %38 = "iree_tensor_ext.dispatch.tensor.load"(%33, %32, %32) <{operandSegmentSizes = array<i32: 1, 1, 0, 1, 0>, static_offsets = array<i64: 0, 0, 0>, static_sizes = array<i64: -9223372036854775808, 86, 128>, static_strides = array<i64: 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<?x86x128xf32>>, index, index) -> tensor<?x86x128xf32>
    %39 = "tensor.empty"(%32) : (index) -> tensor<?x4096xf32>
    %40 = "tensor.empty"() : () -> tensor<4096x86x128xf32>
    %41 = "linalg.fill"(%1, %39) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg7: f32, %arg8: f32):
      "linalg.yield"(%arg7) : (f32) -> ()
    }) : (f32, tensor<?x4096xf32>) -> tensor<?x4096xf32>
    %42 = "linalg.generic"(%35, %36, %37, %40) <{indexing_maps = [#map, #map1, #map1, #map], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 3, 1>}> ({
    ^bb0(%arg3: i4, %arg4: f32, %arg5: f32, %arg6: f32):
      %46 = "arith.extui"(%arg3) : (i4) -> i32
      %47 = "arith.uitofp"(%46) : (i32) -> f32
      %48 = "arith.subf"(%47, %arg5) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      %49 = "arith.mulf"(%48, %arg4) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      "linalg.yield"(%49) : (f32) -> ()
    }) : (tensor<4096x86x128xi4>, tensor<4096x86xf32>, tensor<4096x86xf32>, tensor<4096x86x128xf32>) -> tensor<4096x86x128xf32>
    %43 = "linalg.generic"(%38, %42, %41) <{indexing_maps = [#map2, #map3, #map4], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<reduction>, #linalg.iterator_type<reduction>], operandSegmentSizes = array<i32: 2, 1>}> ({
    ^bb0(%arg0: f32, %arg1: f32, %arg2: f32):
      %44 = "arith.mulf"(%arg0, %arg1) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      %45 = "arith.addf"(%44, %arg2) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      "linalg.yield"(%45) : (f32) -> ()
    }) : (tensor<?x86x128xf32>, tensor<4096x86x128xf32>, tensor<?x4096xf32>) -> tensor<?x4096xf32>
    "iree_tensor_ext.dispatch.tensor.store"(%43, %34, %32, %32) <{operandSegmentSizes = array<i32: 1, 1, 1, 0, 1, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: -9223372036854775808, 4096>, static_strides = array<i64: 1, 1>}> : (tensor<?x4096xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?x4096xf32>>, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

