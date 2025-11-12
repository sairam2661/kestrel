#executable_target_embedded_elf_arm_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-arm_64", {data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", native_vector_size = 16 : index, target_triple = "aarch64-none-elf"}>
#map = affine_map<(d0, d1, d2, d3) -> (d0, d1, d3)>
#map1 = affine_map<(d0, d1, d2, d3) -> (d0, d3, d2)>
#map2 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>
#pipeline_layout = #hal.pipeline.layout<constants = 4, bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "batch_matmul_tensors"}> ({
    %0 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %1 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 0 : index}> : () -> index
    %2 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 1 : index}> : () -> index
    %3 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 2 : index}> : () -> index
    %4 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 3 : index}> : () -> index
    %5 = "hal.interface.binding.subspan"(%1, %2, %4) <{alignment = 32 : index, binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 3>}> : (index, index, index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<?x?x?xf32>>
    %6 = "hal.interface.binding.subspan"(%1, %4, %3) <{alignment = 32 : index, binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 3>}> : (index, index, index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<?x?x?xf32>>
    %7 = "hal.interface.binding.subspan"(%1, %2, %3) <{alignment = 32 : index, binding = 2 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 3>}> : (index, index, index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?x?x?xf32>>
    %8 = "iree_tensor_ext.dispatch.tensor.load"(%5, %1, %2, %4, %1, %2, %4) <{operandSegmentSizes = array<i32: 1, 3, 0, 3, 0>, static_offsets = array<i64: 0, 0, 0>, static_sizes = array<i64: -9223372036854775808, -9223372036854775808, -9223372036854775808>, static_strides = array<i64: 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<?x?x?xf32>>, index, index, index, index, index, index) -> tensor<?x?x?xf32>
    %9 = "iree_tensor_ext.dispatch.tensor.load"(%6, %1, %4, %3, %1, %4, %3) <{operandSegmentSizes = array<i32: 1, 3, 0, 3, 0>, static_offsets = array<i64: 0, 0, 0>, static_sizes = array<i64: -9223372036854775808, -9223372036854775808, -9223372036854775808>, static_strides = array<i64: 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<?x?x?xf32>>, index, index, index, index, index, index) -> tensor<?x?x?xf32>
    %10 = "tensor.empty"(%1, %2, %3) : (index, index, index) -> tensor<?x?x?xf32>
    %11 = "linalg.fill"(%0, %10) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg3: f32, %arg4: f32):
      "linalg.yield"(%arg3) : (f32) -> ()
    }) : (f32, tensor<?x?x?xf32>) -> tensor<?x?x?xf32>
    %12 = "linalg.batch_matmul"(%8, %9, %11) <{indexing_maps = [#map, #map1, #map2], operandSegmentSizes = array<i32: 2, 1>}> ({
    ^bb0(%arg0: f32, %arg1: f32, %arg2: f32):
      %13 = "arith.mulf"(%arg0, %arg1) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      %14 = "arith.addf"(%arg2, %13) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      "linalg.yield"(%14) : (f32) -> ()
    }) : (tensor<?x?x?xf32>, tensor<?x?x?xf32>, tensor<?x?x?xf32>) -> tensor<?x?x?xf32>
    "iree_tensor_ext.dispatch.tensor.store"(%12, %7, %1, %2, %3, %1, %2, %3) <{operandSegmentSizes = array<i32: 1, 1, 3, 0, 3, 0>, static_offsets = array<i64: 0, 0, 0>, static_sizes = array<i64: -9223372036854775808, -9223372036854775808, -9223372036854775808>, static_strides = array<i64: 1, 1, 1>}> : (tensor<?x?x?xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?x?x?xf32>>, index, index, index, index, index, index) -> ()
    "func.return"() : () -> ()
  }) {hal.executable.target = #executable_target_embedded_elf_arm_64} : () -> ()
}) : () -> ()

