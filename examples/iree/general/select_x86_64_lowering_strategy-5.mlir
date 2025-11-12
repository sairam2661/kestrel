#executable_target_embedded_elf_x86_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-x86_64", {data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", native_vector_size = 16 : index, target_triple = "x86_64-unknown-linux-gnu"}>
#map = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>
#pipeline_layout = #hal.pipeline.layout<constants = 4, bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "add4D"}> ({
    %0 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 0 : index}> : () -> index
    %1 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 1 : index}> : () -> index
    %2 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 2 : index}> : () -> index
    %3 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 3 : index}> : () -> index
    %4 = "hal.interface.binding.subspan"(%0, %1, %2, %3) <{alignment = 32 : index, binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 4>}> : (index, index, index, index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<?x?x?x?xf32>>
    %5 = "hal.interface.binding.subspan"(%0, %1, %2, %3) <{alignment = 32 : index, binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 4>}> : (index, index, index, index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<?x?x?x?xf32>>
    %6 = "hal.interface.binding.subspan"(%0, %1, %2, %3) <{alignment = 32 : index, binding = 2 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 4>}> : (index, index, index, index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?x?x?x?xf32>>
    %7 = "iree_tensor_ext.dispatch.tensor.load"(%4, %0, %1, %2, %3, %0, %1, %2, %3) <{operandSegmentSizes = array<i32: 1, 4, 0, 4, 0>, static_offsets = array<i64: 0, 0, 0, 0>, static_sizes = array<i64: -9223372036854775808, -9223372036854775808, -9223372036854775808, -9223372036854775808>, static_strides = array<i64: 1, 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<?x?x?x?xf32>>, index, index, index, index, index, index, index, index) -> tensor<?x?x?x?xf32>
    %8 = "iree_tensor_ext.dispatch.tensor.load"(%5, %0, %1, %2, %3, %0, %1, %2, %3) <{operandSegmentSizes = array<i32: 1, 4, 0, 4, 0>, static_offsets = array<i64: 0, 0, 0, 0>, static_sizes = array<i64: -9223372036854775808, -9223372036854775808, -9223372036854775808, -9223372036854775808>, static_strides = array<i64: 1, 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<?x?x?x?xf32>>, index, index, index, index, index, index, index, index) -> tensor<?x?x?x?xf32>
    %9 = "tensor.empty"(%0, %1, %2, %3) : (index, index, index, index) -> tensor<?x?x?x?xf32>
    %10 = "linalg.generic"(%7, %8, %9) <{indexing_maps = [#map, #map, #map], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 2, 1>}> ({
    ^bb0(%arg0: f32, %arg1: f32, %arg2: f32):
      %11 = "arith.addf"(%arg0, %arg1) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      "linalg.yield"(%11) : (f32) -> ()
    }) : (tensor<?x?x?x?xf32>, tensor<?x?x?x?xf32>, tensor<?x?x?x?xf32>) -> tensor<?x?x?x?xf32>
    "iree_tensor_ext.dispatch.tensor.store"(%10, %6, %0, %1, %2, %3, %0, %1, %2, %3) <{operandSegmentSizes = array<i32: 1, 1, 4, 0, 4, 0>, static_offsets = array<i64: 0, 0, 0, 0>, static_sizes = array<i64: -9223372036854775808, -9223372036854775808, -9223372036854775808, -9223372036854775808>, static_strides = array<i64: 1, 1, 1, 1>}> : (tensor<?x?x?x?xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?x?x?x?xf32>>, index, index, index, index, index, index, index, index) -> ()
    "func.return"() : () -> ()
  }) {hal.executable.target = #executable_target_embedded_elf_x86_64} : () -> ()
}) : () -> ()

