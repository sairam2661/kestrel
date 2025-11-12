#executable_target_embedded_elf_x86_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-x86_64", {cpu_features = "+avx512f", data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", native_vector_size = 16 : index, target_triple = "x86_64-unknown-linux-gnu"}>
#map = affine_map<(d0) -> (d0)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "i1_type"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 3 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<8xi1>>
    %2 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 1 : index, descriptor_flags = 3 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<8xi1>>
    %3 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 2 : index, descriptor_flags = 2 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<8xi1>>
    %4 = "iree_tensor_ext.dispatch.tensor.load"(%1) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0>, static_sizes = array<i64: 8>, static_strides = array<i64: 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<8xi1>>) -> tensor<8xi1>
    %5 = "iree_tensor_ext.dispatch.tensor.load"(%2) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0>, static_sizes = array<i64: 8>, static_strides = array<i64: 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<8xi1>>) -> tensor<8xi1>
    %6 = "tensor.empty"() : () -> tensor<8xi1>
    %7 = "linalg.generic"(%4, %5, %6) <{indexing_maps = [#map, #map, #map], iterator_types = [#linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 2, 1>}> ({
    ^bb0(%arg0: i1, %arg1: i1, %arg2: i1):
      %8 = "arith.xori"(%arg0, %arg1) : (i1, i1) -> i1
      "linalg.yield"(%8) : (i1) -> ()
    }) : (tensor<8xi1>, tensor<8xi1>, tensor<8xi1>) -> tensor<8xi1>
    "iree_tensor_ext.dispatch.tensor.store"(%7, %3) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0>, static_sizes = array<i64: 8>, static_strides = array<i64: 1>}> : (tensor<8xi1>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<8xi1>>) -> ()
    "func.return"() : () -> ()
  }) {hal.executable.target = #executable_target_embedded_elf_x86_64} : () -> ()
}) : () -> ()

