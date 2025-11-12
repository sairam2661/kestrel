#executable_target_system_elf_arm_64 = #hal.executable.target<"llvm-cpu", "system-elf-arm_64", {data_layout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128", native_vector_size = 16 : index, target_triple = "aarch64-none-linux-android30"}>
#pipeline_layout = #hal.pipeline.layout<constants = 6, bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "unpack_fully_dynamic"}> ({
    %0 = "arith.constant"() <{value = 131072 : index}> : () -> index
    %1 = "arith.constant"() <{value = 0 : index}> : () -> index
    %2 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 0 : index}> : () -> i32
    %3 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 1 : index}> : () -> i32
    %4 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 2 : index}> : () -> i32
    %5 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 3 : index}> : () -> i32
    %6 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 4 : index}> : () -> i32
    %7 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 5 : index}> : () -> i32
    %8 = "arith.index_castui"(%2) : (i32) -> index
    %9 = "arith.index_castui"(%3) : (i32) -> index
    %10 = "arith.index_castui"(%4) : (i32) -> index
    %11 = "arith.index_castui"(%5) : (i32) -> index
    %12 = "arith.index_castui"(%6) : (i32) -> index
    %13 = "arith.index_castui"(%7) : (i32) -> index
    %14 = "hal.interface.binding.subspan"(%1, %8, %9, %12, %13) <{alignment = 64 : index, binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 4>}> : (index, index, index, index, index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<?x?x?x?xi32>>
    %15 = "hal.interface.binding.subspan"(%0, %10, %11) <{alignment = 64 : index, binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 2>}> : (index, index, index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?x?xi32>>
    %16 = "iree_tensor_ext.dispatch.tensor.load"(%14, %8, %9, %12, %13, %8, %9) <{operandSegmentSizes = array<i32: 1, 4, 0, 2, 0>, static_offsets = array<i64: 0, 0, 0, 0>, static_sizes = array<i64: -9223372036854775808, -9223372036854775808, 32, 16>, static_strides = array<i64: 1, 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<?x?x?x?xi32>>, index, index, index, index, index, index) -> tensor<?x?x?x?xi32>
    %17 = "tensor.empty"(%10, %11) : (index, index) -> tensor<?x?xi32>
    %18 = "linalg.unpack"(%16, %17, %12, %13) <{inner_dims_pos = array<i64: 0, 1>, static_inner_tiles = array<i64: -9223372036854775808, -9223372036854775808>}> : (tensor<?x?x?x?xi32>, tensor<?x?xi32>, index, index) -> tensor<?x?xi32>
    "iree_tensor_ext.dispatch.tensor.store"(%18, %15, %10, %11, %10, %11) <{operandSegmentSizes = array<i32: 1, 1, 2, 0, 2, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: -9223372036854775808, -9223372036854775808>, static_strides = array<i64: 1, 1>}> : (tensor<?x?xi32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?x?xi32>>, index, index, index, index) -> ()
    "func.return"() : () -> ()
  }) {hal.executable.target = #executable_target_system_elf_arm_64} : () -> ()
}) : () -> ()

