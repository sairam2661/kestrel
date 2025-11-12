#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "static_3d_fft_stage3"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 3 : index}> : () -> index
    %2 = "arith.constant"() <{value = 64 : index}> : () -> index
    %3 = "arith.constant"() <{value = 128 : index}> : () -> index
    %4 = "arith.constant"() <{value = 32 : index}> : () -> index
    %5 = "arith.constant"() <{value = dense<[1.000000e+00, 0.707106769, 6.12323426E-17, -0.707106769]> : tensor<4xf32>}> : () -> tensor<4xf32>
    %6 = "arith.constant"() <{value = dense<[-0.000000e+00, -0.707106769, -1.000000e+00, -0.707106769]> : tensor<4xf32>}> : () -> tensor<4xf32>
    %7 = "bufferization.to_buffer"(%6) : (tensor<4xf32>) -> memref<4xf32>
    %8 = "bufferization.to_buffer"(%5) : (tensor<4xf32>) -> memref<4xf32>
    %9 = "hal.interface.binding.subspan"() <{binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<64x128x32xf32>
    %10 = "hal.interface.binding.subspan"() <{binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<64x128x32xf32>
    "iree_linalg_ext.fft"(%1, %8, %7, %9, %10) <{operandSegmentSizes = array<i32: 3, 2>}> : (index, memref<4xf32>, memref<4xf32>, memref<64x128x32xf32>, memref<64x128x32xf32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

