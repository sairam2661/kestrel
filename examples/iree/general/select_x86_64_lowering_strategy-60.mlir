#executable_target_embedded_elf_x86_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-x86_64", {cpu_features = "+avx512f", data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", native_vector_size = 16 : index, target_triple = "x86_64-unknown-linux-gnu"}>
#map = affine_map<(d0, d1, d2) -> (d1)>
#map1 = affine_map<(d0, d1, d2) -> (d0, d1, d2)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "complex_view_as_real"}> ({
    %0 = "arith.constant"() <{value = 1 : index}> : () -> index
    %1 = "arith.constant"() <{value = 0 : index}> : () -> index
    %2 = "hal.interface.binding.subspan"(%1) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<1xi32>>
    %3 = "hal.interface.binding.subspan"(%1) <{alignment = 64 : index, binding = 1 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<2048x50xcomplex<f32>>>
    %4 = "hal.interface.binding.subspan"(%1) <{alignment = 64 : index, binding = 2 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<1x1x32x50x2xf32>>
    %5 = "hal.interface.binding.subspan"(%1) <{alignment = 64 : index, binding = 3 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<32x50x2xf32>>
    %6 = "iree_tensor_ext.dispatch.tensor.load"(%2) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0>, static_sizes = array<i64: 1>, static_strides = array<i64: 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<1xi32>>) -> tensor<1xi32>
    %7 = "iree_tensor_ext.dispatch.tensor.load"(%4) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 0, 0>, static_sizes = array<i64: 1, 1, 32, 50, 2>, static_strides = array<i64: 1, 1, 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<1x1x32x50x2xf32>>) -> tensor<1x1x32x50x2xf32>
    %8 = "tensor.empty"() : () -> tensor<32x50x2xf32>
    %9 = "tensor.extract"(%6, %1) : (tensor<1xi32>, index) -> i32
    %10 = "arith.extsi"(%9) : (i32) -> i64
    %11 = "arith.index_cast"(%10) : (i64) -> index
    %12 = "iree_tensor_ext.dispatch.tensor.load"(%3, %11) <{operandSegmentSizes = array<i32: 1, 0, 1, 0, 0>, static_offsets = array<i64: -9223372036854775808, 0>, static_sizes = array<i64: 1, 50>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<2048x50xcomplex<f32>>>, index) -> tensor<50xcomplex<f32>>
    %13 = "linalg.generic"(%12, %8) <{indexing_maps = [#map, #map1], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg0: complex<f32>, %arg1: f32):
      %14 = "linalg.index"() <{dim = 0 : i64}> : () -> index
      %15 = "linalg.index"() <{dim = 1 : i64}> : () -> index
      %16 = "tensor.extract"(%7, %1, %1, %14, %15, %1) : (tensor<1x1x32x50x2xf32>, index, index, index, index, index) -> f32
      %17 = "tensor.extract"(%7, %1, %1, %14, %15, %0) : (tensor<1x1x32x50x2xf32>, index, index, index, index, index) -> f32
      %18 = "complex.create"(%16, %17) : (f32, f32) -> complex<f32>
      %19 = "complex.mul"(%18, %arg0) <{fastmath = #arith.fastmath<none>}> : (complex<f32>, complex<f32>) -> complex<f32>
      %20 = "complex.re"(%19) <{fastmath = #arith.fastmath<none>}> : (complex<f32>) -> f32
      %21 = "complex.im"(%19) <{fastmath = #arith.fastmath<none>}> : (complex<f32>) -> f32
      %22 = "linalg.index"() <{dim = 2 : i64}> : () -> index
      %23 = "arith.cmpi"(%22, %1) <{predicate = 0 : i64}> : (index, index) -> i1
      %24 = "arith.select"(%23, %20, %21) : (i1, f32, f32) -> f32
      "linalg.yield"(%24) : (f32) -> ()
    }) : (tensor<50xcomplex<f32>>, tensor<32x50x2xf32>) -> tensor<32x50x2xf32>
    "iree_tensor_ext.dispatch.tensor.store"(%13, %5) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0>, static_sizes = array<i64: 32, 50, 2>, static_strides = array<i64: 1, 1, 1>}> : (tensor<32x50x2xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<32x50x2xf32>>) -> ()
    "func.return"() : () -> ()
  }) {hal.executable.target = #executable_target_embedded_elf_x86_64} : () -> ()
}) : () -> ()

