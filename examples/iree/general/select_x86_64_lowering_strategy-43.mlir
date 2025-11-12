#executable_target_embedded_elf_x86_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-x86_64", {cpu = "generic", cpu_features = "", data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", native_vector_size = 16 : index, target_triple = "x86_64-none-elf"}>
#map = affine_map<(d0, d1, d2) -> (d0, d2)>
#map1 = affine_map<(d0, d1, d2) -> (d2, d1)>
#map2 = affine_map<(d0, d1, d2) -> (d0, d1)>
#map3 = affine_map<(d0, d1) -> (d1)>
#map4 = affine_map<(d0, d1) -> (d0, d1)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "quant_model"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 12 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = -128 : i32}> : () -> i32
    %3 = "arith.constant"() <{value = 127 : i32}> : () -> i32
    %4 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %5 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<2304x24xi8>>
    %6 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<24x144xi8>>
    %7 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 2 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<144xi32>>
    %8 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 3 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<2304x144xi8>>
    %9 = "iree_tensor_ext.dispatch.tensor.load"(%5) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 2304, 24>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<2304x24xi8>>) -> tensor<2304x24xi8>
    %10 = "iree_tensor_ext.dispatch.tensor.load"(%6) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 24, 144>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<24x144xi8>>) -> tensor<24x144xi8>
    %11 = "iree_tensor_ext.dispatch.tensor.load"(%7) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0>, static_sizes = array<i64: 144>, static_strides = array<i64: 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<144xi32>>) -> tensor<144xi32>
    %12 = "tensor.empty"() : () -> tensor<2304x144xi8>
    %13 = "tensor.empty"() : () -> tensor<2304x144xi32>
    %14 = "linalg.fill"(%4, %13) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg6: i32, %arg7: i32):
      "linalg.yield"(%arg6) : (i32) -> ()
    }) : (i32, tensor<2304x144xi32>) -> tensor<2304x144xi32>
    %15 = "linalg.matmul"(%9, %10, %14) <{indexing_maps = [#map, #map1, #map2], operandSegmentSizes = array<i32: 2, 1>}> ({
    ^bb0(%arg3: i8, %arg4: i8, %arg5: i32):
      %20 = "arith.extsi"(%arg3) : (i8) -> i32
      %21 = "arith.extsi"(%arg4) : (i8) -> i32
      %22 = "arith.muli"(%20, %21) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      %23 = "arith.addi"(%arg5, %22) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      "linalg.yield"(%23) : (i32) -> ()
    }) : (tensor<2304x24xi8>, tensor<24x144xi8>, tensor<2304x144xi32>) -> tensor<2304x144xi32>
    %16 = "linalg.generic"(%11, %15, %12) <{indexing_maps = [#map3, #map4, #map4], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 2, 1>}> ({
    ^bb0(%arg0: i32, %arg1: i32, %arg2: i8):
      %17 = "arith.subi"(%arg1, %1) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      %18 = "arith.addi"(%arg0, %17) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      %19 = "arith.trunci"(%18) <{overflowFlags = #arith.overflow<none>}> : (i32) -> i8
      "linalg.yield"(%19) : (i8) -> ()
    }) : (tensor<144xi32>, tensor<2304x144xi32>, tensor<2304x144xi8>) -> tensor<2304x144xi8>
    "iree_tensor_ext.dispatch.tensor.store"(%16, %8) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 2304, 144>, static_strides = array<i64: 1, 1>}> : (tensor<2304x144xi8>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<2304x144xi8>>) -> ()
    "func.return"() : () -> ()
  }) {hal.executable.target = #executable_target_embedded_elf_x86_64} : () -> ()
}) : () -> ()

