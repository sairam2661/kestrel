#executable_target_embedded_elf_x86_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-x86_64", {cpu = "generic", cpu_features = "", data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128", max_stack_allocation_size = 32768 : i64, native_vector_size = 16 : i64, target_triple = "x86_64-unknown-unknown-eabi-elf", ukernels = "none"}>
#map = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d2, d3, d5)>
#map1 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d1, d2, d4, d5)>
#map2 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d3, d4)>
#map3 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>
#map4 = affine_map<(d0, d1, d2, d3) -> (d0, d2)>
#pipeline_layout = #hal.pipeline.layout<constants = 5, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "mmt4d_bias_relu"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 32 : i64}> : () -> i64
    %2 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %3 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 0 : index}> : () -> i32
    %4 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 1 : index}> : () -> i32
    %5 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 2 : index}> : () -> i32
    %6 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 3 : index}> : () -> i32
    %7 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 4 : index}> : () -> i32
    %8 = "arith.index_castui"(%3) : (i32) -> index
    %9 = "arith.index_castui"(%4) : (i32) -> index
    %10 = "arith.index_castui"(%5) : (i32) -> index
    %11 = "arith.index_castui"(%6) : (i32) -> index
    %12 = "arith.index_castui"(%7) : (i32) -> index
    %13 = "iree_tensor_ext.dispatch.workload.ordinal"(%8) <{ordinal = 0 : index}> : (index) -> index
    %14 = "iree_tensor_ext.dispatch.workload.ordinal"(%9) <{ordinal = 1 : index}> : (index) -> index
    %15 = "iree_tensor_ext.dispatch.workload.ordinal"(%10) <{ordinal = 2 : index}> : (index) -> index
    %16 = "iree_tensor_ext.dispatch.workload.ordinal"(%11) <{ordinal = 3 : index}> : (index) -> index
    %17 = "iree_tensor_ext.dispatch.workload.ordinal"(%12) <{ordinal = 4 : index}> : (index) -> index
    %18 = "hal.interface.binding.subspan"(%0, %16, %13) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 3 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 2>}> : (index, index, index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<?x?x16x1xf32>>
    %19 = "hal.interface.binding.subspan"(%0, %14, %17) <{alignment = 64 : index, binding = 1 : index, descriptor_flags = 3 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 2>}> : (index, index, index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<?x?x16x1xf32>>
    %20 = "hal.interface.binding.subspan"(%0, %15) <{alignment = 64 : index, binding = 2 : index, descriptor_flags = 3 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 1>}> : (index, index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<?x16xf32>>
    %21 = "hal.interface.binding.subspan"(%0, %16, %17) <{alignment = 64 : index, binding = 3 : index, descriptor_flags = 2 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 2>}> : (index, index, index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?x?x16x16xf32>>
    %22 = "iree_tensor_ext.dispatch.tensor.load"(%18, %16, %13, %16, %13) <{operandSegmentSizes = array<i32: 1, 2, 0, 2, 0>, static_offsets = array<i64: 0, 0, 0, 0>, static_sizes = array<i64: -9223372036854775808, -9223372036854775808, 16, 1>, static_strides = array<i64: 1, 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<?x?x16x1xf32>>, index, index, index, index) -> tensor<?x?x16x1xf32>
    %23 = "iree_tensor_ext.dispatch.tensor.load"(%19, %14, %17, %14, %17) <{operandSegmentSizes = array<i32: 1, 2, 0, 2, 0>, static_offsets = array<i64: 0, 0, 0, 0>, static_sizes = array<i64: -9223372036854775808, -9223372036854775808, 16, 1>, static_strides = array<i64: 1, 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<?x?x16x1xf32>>, index, index, index, index) -> tensor<?x?x16x1xf32>
    %24 = "iree_tensor_ext.dispatch.tensor.load"(%20, %15, %15) <{operandSegmentSizes = array<i32: 1, 1, 0, 1, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: -9223372036854775808, 16>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<?x16xf32>>, index, index) -> tensor<?x16xf32>
    %25 = "tensor.empty"(%16, %17) : (index, index) -> tensor<?x?x16x16xf32>
    %26 = "linalg.fill"(%2, %25) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg6: f32, %arg7: f32):
      "linalg.yield"(%arg6) : (f32) -> ()
    }) : (f32, tensor<?x?x16x16xf32>) -> tensor<?x?x16x16xf32>
    %27 = "linalg.mmt4d"(%22, %23, %26) <{operandSegmentSizes = array<i32: 2, 1>}> ({
    ^bb0(%arg3: f32, %arg4: f32, %arg5: f32):
      %31 = "arith.mulf"(%arg3, %arg4) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      %32 = "arith.addf"(%arg5, %31) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      "linalg.yield"(%32) : (f32) -> ()
    }) {linalg.memoized_indexing_maps = [#map, #map1, #map2]} : (tensor<?x?x16x1xf32>, tensor<?x?x16x1xf32>, tensor<?x?x16x16xf32>) -> tensor<?x?x16x16xf32>
    %28 = "linalg.generic"(%27, %24, %25) <{indexing_maps = [#map3, #map4, #map3], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 2, 1>}> ({
    ^bb0(%arg0: f32, %arg1: f32, %arg2: f32):
      %29 = "arith.addf"(%arg0, %arg1) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      %30 = "arith.maximumf"(%29, %2) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      "linalg.yield"(%30) : (f32) -> ()
    }) : (tensor<?x?x16x16xf32>, tensor<?x16xf32>, tensor<?x?x16x16xf32>) -> tensor<?x?x16x16xf32>
    "iree_tensor_ext.dispatch.tensor.store"(%28, %21, %16, %17, %16, %17) <{operandSegmentSizes = array<i32: 1, 1, 2, 0, 2, 0>, static_offsets = array<i64: 0, 0, 0, 0>, static_sizes = array<i64: -9223372036854775808, -9223372036854775808, 16, 16>, static_strides = array<i64: 1, 1, 1, 1>}> : (tensor<?x?x16x16xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?x?x16x16xf32>>, index, index, index, index) -> ()
    "func.return"() : () -> ()
  }) {hal.executable.target = #executable_target_embedded_elf_x86_64} : () -> ()
}) : () -> ()

