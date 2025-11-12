#executable_target_embedded_elf_x86_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-x86_64", {cpu_features = "", data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", native_vector_size = 16 : index, target_triple = "x86_64-none-elf"}>
#map = affine_map<(d0, d1, d2) -> (d0, d1, d2)>
#map1 = affine_map<(d0, d1, d2) -> (d0, d1)>
#pipeline_layout = #hal.pipeline.layout<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "split_reduction_innermost_reduction_next_dynamic_supported"}> ({
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 0 : index}> : () -> index
    %2 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 0 : index}> : () -> i32
    %3 = "arith.index_castui"(%2) : (i32) -> index
    %4 = "hal.interface.binding.subspan"(%1, %3) <{alignment = 64 : index, binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 1>}> : (index, index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<1024x?x256xi32>>
    %5 = "hal.interface.binding.subspan"(%1, %3) <{alignment = 64 : index, binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 1>}> : (index, index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<1024x?xi32>>
    %6 = "iree_tensor_ext.dispatch.tensor.load"(%4, %3, %3) <{operandSegmentSizes = array<i32: 1, 1, 0, 1, 0>, static_offsets = array<i64: 0, 0, 0>, static_sizes = array<i64: 1024, -9223372036854775808, 256>, static_strides = array<i64: 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<1024x?x256xi32>>, index, index) -> tensor<1024x?x256xi32>
    %7 = "tensor.empty"(%3) : (index) -> tensor<1024x?xi32>
    %8 = "linalg.fill"(%0, %7) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg2: i32, %arg3: i32):
      "linalg.yield"(%arg2) : (i32) -> ()
    }) : (i32, tensor<1024x?xi32>) -> tensor<1024x?xi32>
    %9 = "linalg.generic"(%6, %8) <{indexing_maps = [#map, #map1], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<reduction>], operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg0: i32, %arg1: i32):
      %10 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      "linalg.yield"(%10) : (i32) -> ()
    }) : (tensor<1024x?x256xi32>, tensor<1024x?xi32>) -> tensor<1024x?xi32>
    "iree_tensor_ext.dispatch.tensor.store"(%9, %5, %3, %3) <{operandSegmentSizes = array<i32: 1, 1, 1, 0, 1, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 1024, -9223372036854775808>, static_strides = array<i64: 1, 1>}> : (tensor<1024x?xi32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<1024x?xi32>>, index, index) -> ()
    "func.return"() : () -> ()
  }) {hal.executable.target = #executable_target_embedded_elf_x86_64} : () -> ()
}) : () -> ()

