#executable_target_vmvx_bytecode_fb = #hal.executable.target<"vmvx", "vmvx-bytecode-fb">
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "static_1d_fft_stage2"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 2 : index}> : () -> index
    %2 = "arith.constant"() <{value = dense<[1.000000e+00, 6.12323426E-17]> : tensor<2xf32>}> : () -> tensor<2xf32>
    %3 = "arith.constant"() <{value = dense<[-0.000000e+00, -1.000000e+00]> : tensor<2xf32>}> : () -> tensor<2xf32>
    %4 = "hal.interface.binding.subspan"() <{binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> !iree_tensor_ext.dispatch.tensor<readwrite:tensor<32xf32>>
    %5 = "hal.interface.binding.subspan"() <{binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> !iree_tensor_ext.dispatch.tensor<readwrite:tensor<32xf32>>
    %6 = "iree_tensor_ext.dispatch.tensor.load"(%4) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0>, static_sizes = array<i64: 32>, static_strides = array<i64: 1>}> : (!iree_tensor_ext.dispatch.tensor<readwrite:tensor<32xf32>>) -> tensor<32xf32>
    %7 = "iree_tensor_ext.dispatch.tensor.load"(%5) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0>, static_sizes = array<i64: 32>, static_strides = array<i64: 1>}> : (!iree_tensor_ext.dispatch.tensor<readwrite:tensor<32xf32>>) -> tensor<32xf32>
    %8:2 = "iree_linalg_ext.fft"(%1, %2, %3, %6, %7) <{operandSegmentSizes = array<i32: 3, 2>}> : (index, tensor<2xf32>, tensor<2xf32>, tensor<32xf32>, tensor<32xf32>) -> (tensor<32xf32>, tensor<32xf32>)
    "iree_tensor_ext.dispatch.tensor.store"(%8#0, %4) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0>, static_sizes = array<i64: 32>, static_strides = array<i64: 1>}> : (tensor<32xf32>, !iree_tensor_ext.dispatch.tensor<readwrite:tensor<32xf32>>) -> ()
    "iree_tensor_ext.dispatch.tensor.store"(%8#1, %5) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0>, static_sizes = array<i64: 32>, static_strides = array<i64: 1>}> : (tensor<32xf32>, !iree_tensor_ext.dispatch.tensor<readwrite:tensor<32xf32>>) -> ()
    "func.return"() : () -> ()
  }) {hal.executable.target = #executable_target_vmvx_bytecode_fb} : () -> ()
}) : () -> ()

