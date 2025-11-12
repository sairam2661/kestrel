#executable_target_system_elf_x86_64 = #hal.executable.target<"llvm-cpu", "system-elf-x86_64", {data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", native_vector_size = 64 : index, target_triple = "x86_64-pc-linux-gnu"}>
#map = affine_map<(d0, d1) -> (d1, d0)>
#map1 = affine_map<(d0, d1) -> (d0, d1)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "generic_static"}> ({
    %0 = "hal.interface.binding.subspan"() <{binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<96x16xf32>>
    %1 = "hal.interface.binding.subspan"() <{binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<16x96xf32>>
    %2 = "iree_tensor_ext.dispatch.tensor.load"(%0) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 96, 16>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<96x16xf32>>) -> tensor<96x16xf32>
    %3 = "tensor.empty"() : () -> tensor<16x96xf32>
    %4 = "linalg.generic"(%2, %3) <{indexing_maps = [#map, #map1], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg0: f32, %arg1: f32):
      "linalg.yield"(%arg0) : (f32) -> ()
    }) : (tensor<96x16xf32>, tensor<16x96xf32>) -> tensor<16x96xf32>
    "iree_tensor_ext.dispatch.tensor.store"(%4, %1) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 16, 96>, static_strides = array<i64: 1, 1>}> : (tensor<16x96xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<16x96xf32>>) -> ()
    "func.return"() : () -> ()
  }) {hal.executable.target = #executable_target_system_elf_x86_64} : () -> ()
}) : () -> ()

