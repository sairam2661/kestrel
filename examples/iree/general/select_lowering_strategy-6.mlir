#executable_target_vmvx_bytecode_fb = #hal.executable.target<"vmvx", "vmvx-bytecode-fb", {ukernels = "none"}>
#pipeline_layout = #hal.pipeline.layout<constants = 2, bindings = [#hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "copy_cst"}> ({
    %0 = "arith.constant"() <{value = dense<4.200000e-01> : tensor<5x19x8x4xf32>}> : () -> tensor<5x19x8x4xf32>
    %1 = "arith.constant"() <{value = 32 : i64}> : () -> i64
    %2 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 0 : index}> : () -> i32
    %3 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 1 : index}> : () -> i32
    %4 = "arith.extui"(%2) : (i32) -> i64
    %5 = "arith.extui"(%3) : (i32) -> i64
    %6 = "arith.shli"(%5, %1) <{overflowFlags = #arith.overflow<none>}> : (i64, i64) -> i64
    %7 = "arith.ori"(%4, %6) : (i64, i64) -> i64
    %8 = "arith.index_castui"(%7) : (i64) -> index
    %9 = "hal.interface.binding.subspan"(%8) <{alignment = 64 : index, binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<5x19x8x4xf32>>
    "iree_tensor_ext.dispatch.tensor.store"(%0, %9) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 0>, static_sizes = array<i64: 5, 19, 8, 4>, static_strides = array<i64: 1, 1, 1, 1>}> : (tensor<5x19x8x4xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<5x19x8x4xf32>>) -> ()
    "func.return"() : () -> ()
  }) {hal.executable.target = #executable_target_vmvx_bytecode_fb} : () -> ()
}) : () -> ()

