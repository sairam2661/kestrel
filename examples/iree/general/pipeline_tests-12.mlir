#executable_target_embedded_elf_x86_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-x86_64", {cpu = "znver4", native_vector_size = 64 : i64, ukernels = "none"}>
#map = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d2, d3, d5)>
#map1 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d1, d2, d4, d5)>
#map2 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d3, d4)>
#map3 = affine_map<(d0, d1) -> (d0, d1)>
#pipeline_layout = #hal.pipeline.layout<constants = 4, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "mmt4d_unpack_elementwise"}> ({
    %0 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %1 = "arith.constant"() <{value = 0 : index}> : () -> index
    %2 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 0 : index}> : () -> i32
    %3 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 1 : index}> : () -> i32
    %4 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 2 : index}> : () -> i32
    %5 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 3 : index}> : () -> i32
    %6 = "arith.index_castui"(%2) : (i32) -> index
    %7 = "arith.index_castui"(%3) : (i32) -> index
    %8 = "arith.index_castui"(%4) : (i32) -> index
    %9 = "arith.index_castui"(%5) : (i32) -> index
    %10:4 = "util.assume.int"(%6, %7, %8, %9) <{assumptions = [[#util.int.assumption<umin = 127552, umax = 480448>], [#util.int.assumption<umin = 32768, umax = 98304>], [#util.int.assumption<umin = 557056, umax = 557056, udiv = 557056>, #util.int.assumption<umin = 994816, umax = 994816, udiv = 994816>, #util.int.assumption<umin = 1432576, umax = 1432576, udiv = 1432576>], [#util.int.assumption<umin = 32, umax = 96, udiv = 32>]]}> : (index, index, index, index) -> (index, index, index, index)
    %11 = "hal.interface.binding.subspan"(%10#2) <{alignment = 64 : index, binding = 1 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<16x23x16x1xf16>>
    %12 = "iree_tensor_ext.dispatch.workload.ordinal"(%10#3) <{ordinal = 0 : index}> : (index) -> index
    %13 = "hal.interface.binding.subspan"(%10#0, %12) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 3 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 1>}> : (index, index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<?x23x1x1xf16>>
    %14 = "hal.interface.binding.subspan"(%10#1, %12) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 3 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 1>}> : (index, index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<?x256xf16>>
    %15 = "hal.interface.binding.subspan"(%1, %12) <{alignment = 64 : index, binding = 2 : index, descriptor_flags = 2 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 1>}> : (index, index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?x256xf16>>
    %16 = "iree_tensor_ext.dispatch.tensor.load"(%13, %12, %12) <{operandSegmentSizes = array<i32: 1, 1, 0, 1, 0>, static_offsets = array<i64: 0, 0, 0, 0>, static_sizes = array<i64: -9223372036854775808, 23, 1, 1>, static_strides = array<i64: 1, 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<?x23x1x1xf16>>, index, index) -> tensor<?x23x1x1xf16>
    %17 = "iree_tensor_ext.dispatch.tensor.load"(%11) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 0>, static_sizes = array<i64: 16, 23, 16, 1>, static_strides = array<i64: 1, 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<16x23x16x1xf16>>) -> tensor<16x23x16x1xf16>
    %18 = "iree_tensor_ext.dispatch.tensor.load"(%14, %12, %12) <{operandSegmentSizes = array<i32: 1, 1, 0, 1, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: -9223372036854775808, 256>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<?x256xf16>>, index, index) -> tensor<?x256xf16>
    %19 = "tensor.empty"(%12) : (index) -> tensor<?x256xf16>
    %20 = "tensor.empty"(%12) : (index) -> tensor<?x16x1x16xf32>
    %21 = "linalg.fill"(%0, %20) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg6: f32, %arg7: f32):
      "linalg.yield"(%arg6) : (f32) -> ()
    }) : (f32, tensor<?x16x1x16xf32>) -> tensor<?x16x1x16xf32>
    %22 = "linalg.mmt4d"(%16, %17, %21) <{operandSegmentSizes = array<i32: 2, 1>}> ({
    ^bb0(%arg3: f16, %arg4: f16, %arg5: f32):
      %28 = "arith.extf"(%arg3) : (f16) -> f32
      %29 = "arith.extf"(%arg4) : (f16) -> f32
      %30 = "arith.mulf"(%28, %29) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      %31 = "arith.addf"(%arg5, %30) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      "linalg.yield"(%31) : (f32) -> ()
    }) {linalg.memoized_indexing_maps = [#map, #map1, #map2]} : (tensor<?x23x1x1xf16>, tensor<16x23x16x1xf16>, tensor<?x16x1x16xf32>) -> tensor<?x16x1x16xf32>
    %23 = "tensor.empty"(%12) : (index) -> tensor<?x256xf32>
    %24 = "linalg.unpack"(%22, %23) <{inner_dims_pos = array<i64: 0, 1>, outer_dims_perm = array<i64: 0, 1>, static_inner_tiles = array<i64: 1, 16>}> : (tensor<?x16x1x16xf32>, tensor<?x256xf32>) -> tensor<?x256xf32>
    %25 = "linalg.generic"(%18, %24, %19) <{indexing_maps = [#map3, #map3, #map3], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 2, 1>}> ({
    ^bb0(%arg0: f16, %arg1: f32, %arg2: f16):
      %26 = "arith.truncf"(%arg1) : (f32) -> f16
      %27 = "arith.addf"(%arg0, %26) <{fastmath = #arith.fastmath<none>}> : (f16, f16) -> f16
      "linalg.yield"(%27) : (f16) -> ()
    }) : (tensor<?x256xf16>, tensor<?x256xf32>, tensor<?x256xf16>) -> tensor<?x256xf16>
    "iree_tensor_ext.dispatch.tensor.store"(%25, %15, %12, %12) <{operandSegmentSizes = array<i32: 1, 1, 1, 0, 1, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: -9223372036854775808, 256>, static_strides = array<i64: 1, 1>}> : (tensor<?x256xf16>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?x256xf16>>, index, index) -> ()
    "func.return"() : () -> ()
  }) {hal.executable.target = #executable_target_embedded_elf_x86_64} : () -> ()
}) : () -> ()

