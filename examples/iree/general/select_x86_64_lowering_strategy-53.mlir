#executable_target_embedded_elf_x86_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-x86_64", {cpu = "generic", cpu_features = "", data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", native_vector_size = 64 : index, target_triple = "x86_64-none-elf"}>
#map = affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2, d4)>
#map1 = affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d5, d6, d7, d4)>
#map2 = affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d5, d6, d7, d3)>
#map3 = affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> ()>
#map4 = affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2, d5, d6, d7)>
#map5 = affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2, d3)>
#map6 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>
#map7 = affine_map<(d0, d1, d2, d3) -> (d0, d2, d1, d3)>
#pipeline_layout = #hal.pipeline.layout<constants = 9, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "attention_transpose_distribute_4d"}> ({
    %0 = "arith.constant"() <{value = 32 : i64}> : () -> i64
    %1 = "arith.constant"() <{value = 8.837890e-02 : f16}> : () -> f16
    %2 = "arith.constant"() <{value = 0 : index}> : () -> index
    %3 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 0 : index}> : () -> i32
    %4 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 1 : index}> : () -> i32
    %5 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 2 : index}> : () -> i32
    %6 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 3 : index}> : () -> i32
    %7 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 4 : index}> : () -> i32
    %8 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 5 : index}> : () -> i32
    %9 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 6 : index}> : () -> i32
    %10 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 7 : index}> : () -> i32
    %11 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 8 : index}> : () -> i32
    %12 = "arith.extui"(%3) : (i32) -> i64
    %13 = "arith.extui"(%4) : (i32) -> i64
    %14 = "arith.shli"(%13, %0) <{overflowFlags = #arith.overflow<none>}> : (i64, i64) -> i64
    %15 = "arith.ori"(%12, %14) : (i64, i64) -> i64
    %16 = "arith.index_castui"(%15) : (i64) -> index
    %17 = "arith.extui"(%5) : (i32) -> i64
    %18 = "arith.extui"(%6) : (i32) -> i64
    %19 = "arith.shli"(%18, %0) <{overflowFlags = #arith.overflow<none>}> : (i64, i64) -> i64
    %20 = "arith.ori"(%17, %19) : (i64, i64) -> i64
    %21 = "arith.index_castui"(%20) : (i64) -> index
    %22 = "arith.extui"(%7) : (i32) -> i64
    %23 = "arith.extui"(%8) : (i32) -> i64
    %24 = "arith.shli"(%23, %0) <{overflowFlags = #arith.overflow<none>}> : (i64, i64) -> i64
    %25 = "arith.ori"(%22, %24) : (i64, i64) -> i64
    %26 = "arith.index_castui"(%25) : (i64) -> index
    %27 = "arith.extui"(%9) : (i32) -> i64
    %28 = "arith.extui"(%10) : (i32) -> i64
    %29 = "arith.shli"(%28, %0) <{overflowFlags = #arith.overflow<none>}> : (i64, i64) -> i64
    %30 = "arith.ori"(%27, %29) : (i64, i64) -> i64
    %31 = "arith.index_castui"(%30) : (i64) -> index
    %32 = "arith.index_castui"(%11) : (i32) -> index
    %33 = "util.assume.int"(%32) <{assumptions = [[#util.int.assumption<umin = 16, umax = 131056, udiv = 16>]]}> : (index) -> index
    %34 = "iree_tensor_ext.dispatch.workload.ordinal"(%33) <{ordinal = 0 : index}> : (index) -> index
    %35 = "hal.interface.binding.subspan"(%16, %34) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 3 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 1>}> : (index, index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<4x4x?x128xf16>>
    %36 = "hal.interface.binding.subspan"(%21, %34) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 3 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 1>}> : (index, index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<4x4x?x1x1x128xf16>>
    %37 = "hal.interface.binding.subspan"(%26, %34) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 3 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 1>}> : (index, index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<4x4x?x1x1x128xf16>>
    %38 = "hal.interface.binding.subspan"(%2, %34, %34) <{alignment = 64 : index, binding = 1 : index, descriptor_flags = 3 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 2>}> : (index, index, index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<4x4x?x?x1x1xf16>>
    %39 = "hal.interface.binding.subspan"(%31, %34) <{alignment = 64 : index, binding = 2 : index, descriptor_flags = 2 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 1>}> : (index, index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<4x?x4x128xf16>>
    %40 = "iree_tensor_ext.dispatch.tensor.load"(%35, %34, %34) <{operandSegmentSizes = array<i32: 1, 1, 0, 1, 0>, static_offsets = array<i64: 0, 0, 0, 0>, static_sizes = array<i64: 4, 4, -9223372036854775808, 128>, static_strides = array<i64: 1, 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<4x4x?x128xf16>>, index, index) -> tensor<4x4x?x128xf16>
    %41 = "iree_tensor_ext.dispatch.tensor.load"(%36, %34, %34) <{operandSegmentSizes = array<i32: 1, 1, 0, 1, 0>, static_offsets = array<i64: 0, 0, 0, 0, 0, 0>, static_sizes = array<i64: 4, 4, -9223372036854775808, 1, 1, 128>, static_strides = array<i64: 1, 1, 1, 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<4x4x?x1x1x128xf16>>, index, index) -> tensor<4x4x?x1x1x128xf16>
    %42 = "iree_tensor_ext.dispatch.tensor.load"(%37, %34, %34) <{operandSegmentSizes = array<i32: 1, 1, 0, 1, 0>, static_offsets = array<i64: 0, 0, 0, 0, 0, 0>, static_sizes = array<i64: 4, 4, -9223372036854775808, 1, 1, 128>, static_strides = array<i64: 1, 1, 1, 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<4x4x?x1x1x128xf16>>, index, index) -> tensor<4x4x?x1x1x128xf16>
    %43 = "iree_tensor_ext.dispatch.tensor.load"(%38, %34, %34, %34, %34) <{operandSegmentSizes = array<i32: 1, 2, 0, 2, 0>, static_offsets = array<i64: 0, 0, 0, 0, 0, 0>, static_sizes = array<i64: 4, 4, -9223372036854775808, -9223372036854775808, 1, 1>, static_strides = array<i64: 1, 1, 1, 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<4x4x?x?x1x1xf16>>, index, index, index, index) -> tensor<4x4x?x?x1x1xf16>
    %44 = "tensor.empty"(%34) : (index) -> tensor<4x?x4x128xf16>
    %45 = "tensor.empty"(%34) : (index) -> tensor<4x4x?x128xf16>
    %46 = "iree_linalg_ext.attention"(%40, %41, %42, %1, %43, %45) <{indexing_maps = [#map, #map1, #map2, #map3, #map4, #map5]}> ({
    ^bb0(%arg2: f32):
      "iree_linalg_ext.yield"(%arg2) : (f32) -> ()
    }) : (tensor<4x4x?x128xf16>, tensor<4x4x?x1x1x128xf16>, tensor<4x4x?x1x1x128xf16>, f16, tensor<4x4x?x?x1x1xf16>, tensor<4x4x?x128xf16>) -> tensor<4x4x?x128xf16>
    %47 = "linalg.generic"(%46, %44) <{indexing_maps = [#map6, #map7], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg0: f16, %arg1: f16):
      "linalg.yield"(%arg0) : (f16) -> ()
    }) : (tensor<4x4x?x128xf16>, tensor<4x?x4x128xf16>) -> tensor<4x?x4x128xf16>
    "iree_tensor_ext.dispatch.tensor.store"(%47, %39, %34, %34) <{operandSegmentSizes = array<i32: 1, 1, 1, 0, 1, 0>, static_offsets = array<i64: 0, 0, 0, 0>, static_sizes = array<i64: 4, -9223372036854775808, 4, 128>, static_strides = array<i64: 1, 1, 1, 1>}> : (tensor<4x?x4x128xf16>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<4x?x4x128xf16>>, index, index) -> ()
    "func.return"() : () -> ()
  }) {hal.executable.target = #executable_target_embedded_elf_x86_64} : () -> ()
}) : () -> ()

