#executable_target_embedded_elf_arm_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-arm_64", {cpu = "generic", cpu_features = "+reserve-x18", max_stack_allocation_size = 32768 : i64, native_vector_size = 16 : i64, target_triple = "aarch64-unknown-unknown-eabi-elf"}>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "pack_without_distribution"}> ({
    %0 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %1 = "arith.constant"() <{value = 0 : index}> : () -> index
    %2 = "hal.interface.binding.subspan"(%1) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 3 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<1980x192xf32>>
    %3 = "hal.interface.binding.subspan"(%1) <{alignment = 64 : index, binding = 1 : index, descriptor_flags = 2 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<248x192x8x1xf32>>
    %4 = "iree_tensor_ext.dispatch.tensor.load"(%2) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 1980, 192>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<1980x192xf32>>) -> tensor<1980x192xf32>
    %5 = "tensor.empty"() : () -> tensor<248x192x8x1xf32>
    %6 = "linalg.pack"(%4, %5, %0) <{inner_dims_pos = array<i64: 0, 1>, operandSegmentSizes = array<i32: 1, 1, 1, 0>, outer_dims_perm = array<i64: 0, 1>, static_inner_tiles = array<i64: 8, 1>}> : (tensor<1980x192xf32>, tensor<248x192x8x1xf32>, f32) -> tensor<248x192x8x1xf32>
    "iree_tensor_ext.dispatch.tensor.store"(%6, %3) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 0>, static_sizes = array<i64: 248, 192, 8, 1>, static_strides = array<i64: 1, 1, 1, 1>}> : (tensor<248x192x8x1xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<248x192x8x1xf32>>) -> ()
    "func.return"() : () -> ()
  }) {hal.executable.target = #executable_target_embedded_elf_arm_64} : () -> ()
}) : () -> ()

