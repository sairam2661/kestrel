#executable_target_system_elf_x86_64 = #hal.executable.target<"llvm-cpu", "system-elf-x86_64", {data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", native_vector_size = 16 : index, target_triple = "x86_64-unknown-linux-gnu"}>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "static_3d_fft_stage3"}> ({
    %0 = "arith.constant"() <{value = 3 : index}> : () -> index
    %1 = "arith.constant"() <{value = dense<[1.000000e+00, 0.707106769, 6.12323426E-17, -0.707106769]> : tensor<4xf32>}> : () -> tensor<4xf32>
    %2 = "arith.constant"() <{value = dense<[-0.000000e+00, -0.707106769, -1.000000e+00, -0.707106769]> : tensor<4xf32>}> : () -> tensor<4xf32>
    %3 = "bufferization.to_buffer"(%2) : (tensor<4xf32>) -> memref<4xf32>
    %4 = "bufferization.to_buffer"(%1) : (tensor<4xf32>) -> memref<4xf32>
    %5 = "hal.interface.binding.subspan"() <{binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<64x128x32xf32>
    %6 = "hal.interface.binding.subspan"() <{binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<64x128x32xf32>
    "iree_linalg_ext.fft"(%0, %4, %3, %5, %6) <{operandSegmentSizes = array<i32: 3, 2>}> : (index, memref<4xf32>, memref<4xf32>, memref<64x128x32xf32>, memref<64x128x32xf32>) -> ()
    "func.return"() : () -> ()
  }) {hal.executable.target = #executable_target_system_elf_x86_64} : () -> ()
}) : () -> ()

