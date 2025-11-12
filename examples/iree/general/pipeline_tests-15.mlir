#executable_target_embedded_elf_x86_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-x86_64", {cpu = "znver4", cpu_features = "", max_stack_allocation_size = 32768 : i64, native_vector_size = 64 : i64, target_triple = "x86_64-unknown-unknown-eabi-elf"}>
#map = affine_map<(d0, d1, d2) -> (d0, d1, d2)>
#map1 = affine_map<(d0, d1, d2) -> (d0, d1)>
#pipeline_layout = #hal.pipeline.layout<constants = 6, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "softmax_dynamic_with_assume_int_hints"}> ({
    %0 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %1 = "arith.constant"() <{value = 0xFFC00000 : f32}> : () -> f32
    %2 = "arith.constant"() <{value = 1 : index}> : () -> index
    %3 = "arith.constant"() <{value = 32 : i64}> : () -> i64
    %4 = "arith.constant"() <{value = 0 : index}> : () -> index
    %5 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 0 : index}> : () -> i32
    %6 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 1 : index}> : () -> i32
    %7 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 2 : index}> : () -> i32
    %8 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 3 : index}> : () -> i32
    %9 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 4 : index}> : () -> i32
    %10 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 5 : index}> : () -> i32
    %11 = "arith.extui"(%5) : (i32) -> i64
    %12 = "arith.extui"(%6) : (i32) -> i64
    %13 = "arith.shli"(%12, %3) <{overflowFlags = #arith.overflow<none>}> : (i64, i64) -> i64
    %14 = "arith.ori"(%11, %13) : (i64, i64) -> i64
    %15 = "arith.index_castui"(%14) : (i64) -> index
    %16 = "arith.extui"(%7) : (i32) -> i64
    %17 = "arith.extui"(%8) : (i32) -> i64
    %18 = "arith.shli"(%17, %3) <{overflowFlags = #arith.overflow<none>}> : (i64, i64) -> i64
    %19 = "arith.ori"(%16, %18) : (i64, i64) -> i64
    %20 = "arith.index_castui"(%19) : (i64) -> index
    %21 = "arith.extui"(%9) : (i32) -> i64
    %22 = "arith.extui"(%10) : (i32) -> i64
    %23 = "arith.shli"(%22, %3) <{overflowFlags = #arith.overflow<none>}> : (i64, i64) -> i64
    %24 = "arith.ori"(%21, %23) : (i64, i64) -> i64
    %25 = "arith.index_castui"(%24) : (i64) -> index
    %26:3 = "util.assume.int"(%15, %20, %25) <{assumptions = [[#util.int.assumption<umin = 0, umax = 9007199254740991>], [#util.int.assumption<umin = 0, umax = 9007199254740991>], [#util.int.assumption<umin = 0, umax = 9007199254740991>]]}> : (index, index, index) -> (index, index, index)
    %27 = "iree_tensor_ext.dispatch.workload.ordinal"(%26#0) <{ordinal = 0 : index}> : (index) -> index
    %28 = "iree_tensor_ext.dispatch.workload.ordinal"(%26#1) <{ordinal = 1 : index}> : (index) -> index
    %29 = "iree_tensor_ext.dispatch.workload.ordinal"(%26#2) <{ordinal = 2 : index}> : (index) -> index
    %30 = "hal.interface.binding.subspan"(%4, %27, %28, %29) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 3 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 3>}> : (index, index, index, index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<?x?x?xf32>>
    %31 = "hal.interface.binding.subspan"(%4, %27, %28, %29) <{alignment = 64 : index, binding = 1 : index, descriptor_flags = 2 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 3>}> : (index, index, index, index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?x?x?xf32>>
    %32 = "iree_tensor_ext.dispatch.tensor.load"(%30, %27, %28, %29, %27, %28, %29) <{operandSegmentSizes = array<i32: 1, 3, 0, 3, 0>, static_offsets = array<i64: 0, 0, 0>, static_sizes = array<i64: -9223372036854775808, -9223372036854775808, -9223372036854775808>, static_strides = array<i64: 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<?x?x?xf32>>, index, index, index, index, index, index) -> tensor<?x?x?xf32>
    %33 = "tensor.empty"(%27, %28, %29) : (index, index, index) -> tensor<?x?x?xf32>
    %34 = "tensor.dim"(%32, %4) : (tensor<?x?x?xf32>, index) -> index
    %35 = "tensor.dim"(%32, %2) : (tensor<?x?x?xf32>, index) -> index
    %36 = "tensor.empty"(%34, %35) : (index, index) -> tensor<?x?xf32>
    %37 = "linalg.fill"(%1, %36) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg11: f32, %arg12: f32):
      "linalg.yield"(%arg11) : (f32) -> ()
    }) : (f32, tensor<?x?xf32>) -> tensor<?x?xf32>
    %38 = "linalg.generic"(%32, %37) <{indexing_maps = [#map, #map1], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<reduction>], operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg9: f32, %arg10: f32):
      %48 = "arith.maxnumf"(%arg9, %arg10) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      "linalg.yield"(%48) : (f32) -> ()
    }) : (tensor<?x?x?xf32>, tensor<?x?xf32>) -> tensor<?x?xf32>
    %39 = "linalg.fill"(%0, %36) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg7: f32, %arg8: f32):
      "linalg.yield"(%arg7) : (f32) -> ()
    }) : (f32, tensor<?x?xf32>) -> tensor<?x?xf32>
    %40 = "linalg.generic"(%32, %38, %39) <{indexing_maps = [#map, #map1, #map1], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<reduction>], operandSegmentSizes = array<i32: 2, 1>}> ({
    ^bb0(%arg4: f32, %arg5: f32, %arg6: f32):
      %45 = "arith.subf"(%arg4, %arg5) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      %46 = "math.exp"(%45) <{fastmath = #arith.fastmath<none>}> : (f32) -> f32
      %47 = "arith.addf"(%46, %arg6) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      "linalg.yield"(%47) : (f32) -> ()
    }) : (tensor<?x?x?xf32>, tensor<?x?xf32>, tensor<?x?xf32>) -> tensor<?x?xf32>
    %41 = "linalg.generic"(%32, %38, %40, %33) <{indexing_maps = [#map, #map1, #map1, #map], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 3, 1>}> ({
    ^bb0(%arg0: f32, %arg1: f32, %arg2: f32, %arg3: f32):
      %42 = "arith.subf"(%arg0, %arg1) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      %43 = "math.exp"(%42) <{fastmath = #arith.fastmath<none>}> : (f32) -> f32
      %44 = "arith.divf"(%43, %arg2) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      "linalg.yield"(%44) : (f32) -> ()
    }) : (tensor<?x?x?xf32>, tensor<?x?xf32>, tensor<?x?xf32>, tensor<?x?x?xf32>) -> tensor<?x?x?xf32>
    "iree_tensor_ext.dispatch.tensor.store"(%41, %31, %27, %28, %29, %27, %28, %29) <{operandSegmentSizes = array<i32: 1, 1, 3, 0, 3, 0>, static_offsets = array<i64: 0, 0, 0>, static_sizes = array<i64: -9223372036854775808, -9223372036854775808, -9223372036854775808>, static_strides = array<i64: 1, 1, 1>}> : (tensor<?x?x?xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?x?x?xf32>>, index, index, index, index, index, index) -> ()
    "func.return"() : () -> ()
  }) {hal.executable.target = #executable_target_embedded_elf_x86_64} : () -> ()
}) : () -> ()

