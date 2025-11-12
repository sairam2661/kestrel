#executable_target_system_elf_riscv_64 = #hal.executable.target<"llvm-cpu", "system-elf-riscv_64", {cpu = "generic-rv64", cpu_features = "+m,+a,+f,+d,+v", data_layout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128", native_vector_size = 64 : index, target_triple = "riscv64"}>
#map = affine_map<(d0, d1) -> (d0 + d1 * 257)>
#map1 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "main_dispatch_77_generic_1x257x257x21"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 2.000000e+00 : f32}> : () -> f32
    %2 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %3 = "arith.constant"() <{value = 1.600000e+01 : f32}> : () -> f32
    %4 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %5 = "arith.constant"() <{value = 32 : i32}> : () -> i32
    %6 = "arith.constant"() <{value = 1.000000e+00 : f32}> : () -> f32
    %7 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %8 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<1x33x33x21xf32>>
    %9 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<1x257x257x21xf32>>
    %10 = "iree_tensor_ext.dispatch.tensor.load"(%8) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 0>, static_sizes = array<i64: 1, 33, 33, 21>, static_strides = array<i64: 1, 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<1x33x33x21xf32>>) -> tensor<1x33x33x21xf32>
    %11 = "tensor.empty"() : () -> tensor<1x257x257x21xf32>
    %12 = "linalg.generic"(%11) <{indexing_maps = [#map1], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 0, 1>}> ({
    ^bb0(%arg0: f32):
      %13 = "linalg.index"() <{dim = 1 : i64}> : () -> index
      %14 = "linalg.index"() <{dim = 0 : i64}> : () -> index
      %15 = "affine.apply"(%13, %14) <{map = #map}> : (index, index) -> index
      %16 = "linalg.index"() <{dim = 2 : i64}> : () -> index
      %17 = "linalg.index"() <{dim = 3 : i64}> : () -> index
      %18 = "arith.index_cast"(%15) : (index) -> i32
      %19 = "arith.index_cast"(%16) : (index) -> i32
      %20 = "arith.uitofp"(%18) : (i32) -> f32
      %21 = "arith.mulf"(%20, %1) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      %22 = "arith.addf"(%21, %2) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      %23 = "arith.divf"(%22, %3) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      %24 = "math.floor"(%23) <{fastmath = #arith.fastmath<none>}> : (f32) -> f32
      %25 = "arith.subf"(%23, %24) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      %26 = "arith.fptosi"(%24) : (f32) -> i32
      %27 = "arith.uitofp"(%19) : (i32) -> f32
      %28 = "arith.mulf"(%27, %1) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      %29 = "arith.addf"(%28, %2) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      %30 = "arith.divf"(%29, %3) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      %31 = "math.floor"(%30) <{fastmath = #arith.fastmath<none>}> : (f32) -> f32
      %32 = "arith.subf"(%30, %31) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      %33 = "arith.fptosi"(%31) : (f32) -> i32
      %34 = "arith.addi"(%26, %4) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      %35 = "arith.cmpi"(%26, %7) <{predicate = 2 : i64}> : (i32, i32) -> i1
      %36 = "arith.select"(%35, %7, %26) : (i1, i32, i32) -> i32
      %37 = "arith.cmpi"(%26, %5) <{predicate = 4 : i64}> : (i32, i32) -> i1
      %38 = "arith.select"(%37, %5, %36) : (i1, i32, i32) -> i32
      %39 = "arith.cmpi"(%34, %7) <{predicate = 2 : i64}> : (i32, i32) -> i1
      %40 = "arith.select"(%39, %7, %34) : (i1, i32, i32) -> i32
      %41 = "arith.cmpi"(%34, %5) <{predicate = 4 : i64}> : (i32, i32) -> i1
      %42 = "arith.select"(%41, %5, %40) : (i1, i32, i32) -> i32
      %43 = "arith.index_cast"(%38) : (i32) -> index
      %44 = "arith.index_cast"(%42) : (i32) -> index
      %45 = "arith.addi"(%33, %4) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      %46 = "arith.cmpi"(%33, %7) <{predicate = 2 : i64}> : (i32, i32) -> i1
      %47 = "arith.select"(%46, %7, %33) : (i1, i32, i32) -> i32
      %48 = "arith.cmpi"(%33, %5) <{predicate = 4 : i64}> : (i32, i32) -> i1
      %49 = "arith.select"(%48, %5, %47) : (i1, i32, i32) -> i32
      %50 = "arith.cmpi"(%45, %7) <{predicate = 2 : i64}> : (i32, i32) -> i1
      %51 = "arith.select"(%50, %7, %45) : (i1, i32, i32) -> i32
      %52 = "arith.cmpi"(%45, %5) <{predicate = 4 : i64}> : (i32, i32) -> i1
      %53 = "arith.select"(%52, %5, %51) : (i1, i32, i32) -> i32
      %54 = "arith.index_cast"(%49) : (i32) -> index
      %55 = "arith.index_cast"(%53) : (i32) -> index
      %56 = "tensor.extract"(%10, %0, %43, %54, %17) : (tensor<1x33x33x21xf32>, index, index, index, index) -> f32
      %57 = "tensor.extract"(%10, %0, %43, %55, %17) : (tensor<1x33x33x21xf32>, index, index, index, index) -> f32
      %58 = "tensor.extract"(%10, %0, %44, %54, %17) : (tensor<1x33x33x21xf32>, index, index, index, index) -> f32
      %59 = "tensor.extract"(%10, %0, %44, %55, %17) : (tensor<1x33x33x21xf32>, index, index, index, index) -> f32
      %60 = "arith.subf"(%6, %32) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      %61 = "arith.mulf"(%56, %60) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      %62 = "arith.mulf"(%57, %32) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      %63 = "arith.addf"(%61, %62) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      %64 = "arith.mulf"(%58, %60) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      %65 = "arith.mulf"(%59, %32) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      %66 = "arith.addf"(%64, %65) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      %67 = "arith.subf"(%6, %25) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      %68 = "arith.mulf"(%63, %67) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      %69 = "arith.mulf"(%66, %25) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      %70 = "arith.addf"(%68, %69) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      "linalg.yield"(%70) : (f32) -> ()
    }) : (tensor<1x257x257x21xf32>) -> tensor<1x257x257x21xf32>
    "iree_tensor_ext.dispatch.tensor.store"(%12, %9) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 0>, static_sizes = array<i64: 1, 257, 257, 21>, static_strides = array<i64: 1, 1, 1, 1>}> : (tensor<1x257x257x21xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<1x257x257x21xf32>>) -> ()
    "func.return"() : () -> ()
  }) {hal.executable.target = #executable_target_system_elf_riscv_64} : () -> ()
}) : () -> ()

