#executable_target_embedded_elf_x86_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-x86_64", {cpu = "generic", cpu_features = "", data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", native_vector_size = 16 : index, target_triple = "x86_64-none-elf", ukernels = "all"}>
#map = affine_map<()[s0, s1, s2] -> (s0 - s1 * (s0 ceildiv s2), s0 ceildiv s2)>
#map1 = affine_map<()[s0, s1, s2] -> (s0 * (s1 ceildiv s2))>
#pipeline_layout = #hal.pipeline.layout<constants = 2, bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "dispatch"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 0 : index}> : () -> i32
    %2 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 1 : index}> : () -> i32
    %3 = "arith.index_castui"(%1) : (i32) -> index
    %4 = "arith.index_castui"(%2) : (i32) -> index
    %5 = "hal.interface.binding.subspan"(%0, %3) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 1>}> : (index, index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<?xf32>>
    %6 = "hal.interface.binding.subspan"(%0, %4) <{alignment = 64 : index, binding = 1 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 1>}> : (index, index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<?xf32>>
    %7 = "hal.interface.binding.subspan"(%0, %3) <{alignment = 64 : index, binding = 2 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 1>}> : (index, index) -> !iree_tensor_ext.dispatch.tensor<readwrite:tensor<?xf32>>
    %8 = "hal.interface.workgroup.id"() <{dimension = 0 : index}> : () -> index
    %9 = "hal.interface.workgroup.count"() <{dimension = 0 : index}> : () -> index
    %10 = "affine.min"(%3, %8, %9) <{map = #map}> : (index, index, index) -> index
    %11 = "affine.apply"(%8, %3, %9) <{map = #map1}> : (index, index, index) -> index
    %12 = "iree_tensor_ext.dispatch.tensor.load"(%5, %3, %11, %10) <{operandSegmentSizes = array<i32: 1, 1, 1, 1, 0>, static_offsets = array<i64: -9223372036854775808>, static_sizes = array<i64: -9223372036854775808>, static_strides = array<i64: 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<?xf32>>, index, index, index) -> tensor<?xf32>
    %13 = "iree_tensor_ext.dispatch.tensor.load"(%6, %4, %11, %10) <{operandSegmentSizes = array<i32: 1, 1, 1, 1, 0>, static_offsets = array<i64: -9223372036854775808>, static_sizes = array<i64: -9223372036854775808>, static_strides = array<i64: 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<?xf32>>, index, index, index) -> tensor<?xf32>
    %14 = "tensor.empty"(%10) : (index) -> tensor<?xf32>
    %15 = "iree_codegen.ukernel.generic"(%12, %13, %14, %10) <{operandSegmentSizes = array<i32: 2, 1, 1>, u_kernel_fn_name = "simple_mul_workgroup"}> : (tensor<?xf32>, tensor<?xf32>, tensor<?xf32>, index) -> tensor<?xf32>
    "iree_tensor_ext.dispatch.tensor.store"(%15, %7, %3, %11, %10) <{operandSegmentSizes = array<i32: 1, 1, 1, 1, 1, 0>, static_offsets = array<i64: -9223372036854775808>, static_sizes = array<i64: -9223372036854775808>, static_strides = array<i64: 1>}> : (tensor<?xf32>, !iree_tensor_ext.dispatch.tensor<readwrite:tensor<?xf32>>, index, index, index) -> ()
    "func.return"() : () -> ()
  }) {hal.executable.target = #executable_target_embedded_elf_x86_64} : () -> ()
}) : () -> ()

