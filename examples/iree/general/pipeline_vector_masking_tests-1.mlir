#executable_target_system_elf_x86_64 = #hal.executable.target<"llvm-cpu", "system-elf-x86_64", {data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", native_vector_size = 32 : index, target_triple = "x86_64-unknown-linux-gnu"}>
#map = affine_map<(d0, d1) -> (d0, d1)>
#map1 = affine_map<(d0, d1) -> (d0)>
#pipeline_layout = #hal.pipeline.layout<constants = 2, bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "mask_dynamic_reduction"}> ({
    %0 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %1 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 0 : index}> : () -> i32
    %2 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 1 : index}> : () -> i32
    %3 = "arith.index_cast"(%1) : (i32) -> index
    %4 = "arith.index_cast"(%2) : (i32) -> index
    %5 = "hal.interface.binding.subspan"(%3, %4) <{binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 2>}> : (index, index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<?x?xf32>>
    %6 = "hal.interface.binding.subspan"(%3) <{binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 1>}> : (index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?xf32>>
    %7 = "iree_tensor_ext.dispatch.tensor.load"(%5, %3, %4, %3, %4) <{operandSegmentSizes = array<i32: 1, 2, 0, 2, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: -9223372036854775808, -9223372036854775808>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<?x?xf32>>, index, index, index, index) -> tensor<?x?xf32>
    %8 = "tensor.empty"(%3) : (index) -> tensor<?xf32>
    %9 = "linalg.fill"(%0, %8) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg2: f32, %arg3: f32):
      "linalg.yield"(%arg2) : (f32) -> ()
    }) : (f32, tensor<?xf32>) -> tensor<?xf32>
    %10 = "linalg.generic"(%7, %9) <{indexing_maps = [#map, #map1], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<reduction>], operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg0: f32, %arg1: f32):
      %11 = "arith.addf"(%arg1, %arg0) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      "linalg.yield"(%11) : (f32) -> ()
    }) : (tensor<?x?xf32>, tensor<?xf32>) -> tensor<?xf32>
    "iree_tensor_ext.dispatch.tensor.store"(%10, %6, %3, %3) <{operandSegmentSizes = array<i32: 1, 1, 1, 0, 1, 0>, static_offsets = array<i64: 0>, static_sizes = array<i64: -9223372036854775808>, static_strides = array<i64: 1>}> : (tensor<?xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?xf32>>, index, index) -> ()
    "func.return"() : () -> ()
  }) {hal.executable.target = #executable_target_system_elf_x86_64} : () -> ()
}) : () -> ()

