#executable_target_system_elf_x86_64 = #hal.executable.target<"llvm-cpu", "system-elf-x86_64", {native_vector_size = 16 : i64}>
#map = affine_map<(d0) -> (d0)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "test_mod_vectorizing_strategy_peeling"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<6xi32>>
    %2 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 1 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<6xi32>>
    %3 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 2 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<6xi32>>
    %4 = "iree_tensor_ext.dispatch.tensor.load"(%1) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0>, static_sizes = array<i64: 6>, static_strides = array<i64: 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<6xi32>>) -> tensor<6xi32>
    %5 = "iree_tensor_ext.dispatch.tensor.load"(%2) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0>, static_sizes = array<i64: 6>, static_strides = array<i64: 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<6xi32>>) -> tensor<6xi32>
    %6 = "tensor.empty"() : () -> tensor<6xi32>
    %7 = "linalg.generic"(%4, %5, %6) <{indexing_maps = [#map, #map, #map], iterator_types = [#linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 2, 1>}> ({
    ^bb0(%arg0: i32, %arg1: i32, %arg2: i32):
      %8 = "arith.remsi"(%arg0, %arg1) : (i32, i32) -> i32
      "linalg.yield"(%8) : (i32) -> ()
    }) : (tensor<6xi32>, tensor<6xi32>, tensor<6xi32>) -> tensor<6xi32>
    "iree_tensor_ext.dispatch.tensor.store"(%7, %3) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0>, static_sizes = array<i64: 6>, static_strides = array<i64: 1>}> : (tensor<6xi32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<6xi32>>) -> ()
    "func.return"() : () -> ()
  }) {hal.executable.target = #executable_target_system_elf_x86_64} : () -> ()
}) : () -> ()

