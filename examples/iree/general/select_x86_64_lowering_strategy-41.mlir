#executable_target_embedded_elf_x86_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-x86_64", {cpu_features = "", data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", native_vector_size = 16 : index, target_triple = "x86_64-none-elf"}>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "unpack_static"}> ({
    %0 = "arith.constant"() <{value = 41943040 : index}> : () -> index
    %1 = "arith.constant"() <{value = 0 : index}> : () -> index
    %2 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<64x256x16x16xf32>>
    %3 = "hal.interface.binding.subspan"(%1) <{alignment = 64 : index, binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<1024x4096xf32>>
    %4 = "iree_tensor_ext.dispatch.tensor.load"(%2) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 0>, static_sizes = array<i64: 64, 256, 16, 16>, static_strides = array<i64: 1, 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<64x256x16x16xf32>>) -> tensor<64x256x16x16xf32>
    %5 = "tensor.empty"() : () -> tensor<1024x4096xf32>
    %6 = "linalg.unpack"(%4, %5) <{inner_dims_pos = array<i64: 0, 1>, static_inner_tiles = array<i64: 16, 16>}> : (tensor<64x256x16x16xf32>, tensor<1024x4096xf32>) -> tensor<1024x4096xf32>
    "iree_tensor_ext.dispatch.tensor.store"(%6, %3) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 1024, 4096>, static_strides = array<i64: 1, 1>}> : (tensor<1024x4096xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<1024x4096xf32>>) -> ()
    "func.return"() : () -> ()
  }) {hal.executable.target = #executable_target_embedded_elf_x86_64} : () -> ()
}) : () -> ()

