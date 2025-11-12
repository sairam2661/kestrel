#executable_target_embedded_elf_x86_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-x86_64", {data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", native_vector_size = 16 : index, target_triple = "x86_64-unknown-linux-gnu"}>
#map = affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2, d3, d4, d5, d6, d7)>
#pipeline_layout = #hal.pipeline.layout<constants = 4, bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "generic_unit_dims_dynamic"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 0 : index}> : () -> index
    %2 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 1 : index}> : () -> index
    %3 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 2 : index}> : () -> index
    %4 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 3 : index}> : () -> index
    %5 = "hal.interface.binding.subspan"(%1, %2, %3, %4) <{binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 4>}> : (index, index, index, index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<1x?x1x1x?x?x1x?xf32>>
    %6 = "hal.interface.binding.subspan"(%1, %2, %3, %4) <{binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 4>}> : (index, index, index, index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<1x?x1x1x?x?x1x?xf32>>
    %7 = "iree_tensor_ext.dispatch.tensor.load"(%5, %1, %2, %3, %4, %1, %2, %3, %4) <{operandSegmentSizes = array<i32: 1, 4, 0, 4, 0>, static_offsets = array<i64: 0, 0, 0, 0, 0, 0, 0, 0>, static_sizes = array<i64: 1, -9223372036854775808, 1, 1, -9223372036854775808, -9223372036854775808, 1, -9223372036854775808>, static_strides = array<i64: 1, 1, 1, 1, 1, 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<1x?x1x1x?x?x1x?xf32>>, index, index, index, index, index, index, index, index) -> tensor<1x?x1x1x?x?x1x?xf32>
    %8 = "tensor.empty"(%1, %2, %3, %4) : (index, index, index, index) -> tensor<1x?x1x1x?x?x1x?xf32>
    %9 = "linalg.generic"(%7, %8) <{indexing_maps = [#map, #map], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg0: f32, %arg1: f32):
      %10 = "arith.addf"(%arg0, %arg0) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      "linalg.yield"(%10) : (f32) -> ()
    }) : (tensor<1x?x1x1x?x?x1x?xf32>, tensor<1x?x1x1x?x?x1x?xf32>) -> tensor<1x?x1x1x?x?x1x?xf32>
    "iree_tensor_ext.dispatch.tensor.store"(%9, %6, %1, %2, %3, %4, %1, %2, %3, %4) <{operandSegmentSizes = array<i32: 1, 1, 4, 0, 4, 0>, static_offsets = array<i64: 0, 0, 0, 0, 0, 0, 0, 0>, static_sizes = array<i64: 1, -9223372036854775808, 1, 1, -9223372036854775808, -9223372036854775808, 1, -9223372036854775808>, static_strides = array<i64: 1, 1, 1, 1, 1, 1, 1, 1>}> : (tensor<1x?x1x1x?x?x1x?xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<1x?x1x1x?x?x1x?xf32>>, index, index, index, index, index, index, index, index) -> ()
    "func.return"() : () -> ()
  }) {hal.executable.target = #executable_target_embedded_elf_x86_64} : () -> ()
}) : () -> ()

