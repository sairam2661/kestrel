#executable_target_system_elf_arm_64 = #hal.executable.target<"llvm-cpu", "system-elf-arm_64", {data_layout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128", native_vector_size = 16 : index, target_triple = "aarch64-none-linux-android30"}>
#pipeline_layout = #hal.pipeline.layout<constants = 4, bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "unpack_outer_dynamic"}> ({
    %0 = "arith.constant"() <{value = 131072 : index}> : () -> index
    %1 = "arith.constant"() <{value = 0 : index}> : () -> index
    %2 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 0 : index}> : () -> i32
    %3 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 1 : index}> : () -> i32
    %4 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 2 : index}> : () -> i32
    %5 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 3 : index}> : () -> i32
    %6 = "arith.index_castui"(%2) : (i32) -> index
    %7 = "arith.index_castui"(%3) : (i32) -> index
    %8 = "arith.index_castui"(%4) : (i32) -> index
    %9 = "arith.index_castui"(%5) : (i32) -> index
    %10 = "hal.interface.binding.subspan"(%1, %6, %7) <{alignment = 64 : index, binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 2>}> : (index, index, index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<?x?x32x16xi32>>
    %11 = "hal.interface.binding.subspan"(%0, %8, %9) <{alignment = 64 : index, binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 2>}> : (index, index, index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?x?xi32>>
    %12 = "iree_tensor_ext.dispatch.tensor.load"(%10, %6, %7, %6, %7) <{operandSegmentSizes = array<i32: 1, 2, 0, 2, 0>, static_offsets = array<i64: 0, 0, 0, 0>, static_sizes = array<i64: -9223372036854775808, -9223372036854775808, 32, 16>, static_strides = array<i64: 1, 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<?x?x32x16xi32>>, index, index, index, index) -> tensor<?x?x32x16xi32>
    %13 = "tensor.empty"(%8, %9) : (index, index) -> tensor<?x?xi32>
    %14 = "linalg.unpack"(%12, %13) <{inner_dims_pos = array<i64: 0, 1>, static_inner_tiles = array<i64: 32, 16>}> : (tensor<?x?x32x16xi32>, tensor<?x?xi32>) -> tensor<?x?xi32>
    "iree_tensor_ext.dispatch.tensor.store"(%14, %11, %8, %9, %8, %9) <{operandSegmentSizes = array<i32: 1, 1, 2, 0, 2, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: -9223372036854775808, -9223372036854775808>, static_strides = array<i64: 1, 1>}> : (tensor<?x?xi32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?x?xi32>>, index, index, index, index) -> ()
    "func.return"() : () -> ()
  }) {hal.executable.target = #executable_target_system_elf_arm_64} : () -> ()
}) : () -> ()

