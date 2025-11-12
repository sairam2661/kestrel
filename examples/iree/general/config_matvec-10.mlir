#map = affine_map<(d0, d1) -> (d0, d1)>
#map1 = affine_map<(d0, d1) -> (d0)>
#pipeline_layout = #hal.pipeline.layout<constants = 4, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "dynamic_parallel_dims_dispatch_0_reduction_Dx4096_f16xf32"}> ({
    %0 = "arith.constant"() <{value = 32 : i64}> : () -> i64
    %1 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %2 = "arith.constant"() <{value = 0 : index}> : () -> index
    %3 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 0 : index}> : () -> i32
    %4 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 1 : index}> : () -> i32
    %5 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 2 : index}> : () -> i32
    %6 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 3 : index}> : () -> i32
    %7 = "arith.extui"(%3) : (i32) -> i64
    %8 = "arith.extui"(%4) : (i32) -> i64
    %9 = "arith.shli"(%8, %0) <{overflowFlags = #arith.overflow<none>}> : (i64, i64) -> i64
    %10 = "arith.ori"(%7, %9) : (i64, i64) -> i64
    %11 = "arith.index_castui"(%10) : (i64) -> index
    %12 = "arith.extui"(%5) : (i32) -> i64
    %13 = "arith.extui"(%6) : (i32) -> i64
    %14 = "arith.shli"(%13, %0) <{overflowFlags = #arith.overflow<none>}> : (i64, i64) -> i64
    %15 = "arith.ori"(%12, %14) : (i64, i64) -> i64
    %16 = "arith.index_castui"(%15) : (i64) -> index
    %17:2 = "util.assume.int"(%11, %16) <{assumptions = [[#util.int.assumption<udiv = 4>], [#util.int.assumption<umin = 0, umax = 36028797018963964, udiv = 4>]]}> : (index, index) -> (index, index)
    %18 = "iree_tensor_ext.dispatch.workload.ordinal"(%17#0) <{ordinal = 0 : index}> : (index) -> index
    %19 = "iree_tensor_ext.dispatch.workload.ordinal"(%17#1) <{ordinal = 1 : index}> : (index) -> index
    %20 = "hal.interface.binding.subspan"(%2, %19) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 3 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 1>}> : (index, index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<?x4096xf16>>
    %21 = "hal.interface.binding.subspan"(%2, %18) <{alignment = 64 : index, binding = 1 : index, descriptor_flags = 2 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 1>}> : (index, index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?xf32>>
    %22 = "iree_tensor_ext.dispatch.tensor.load"(%20, %19, %19) <{operandSegmentSizes = array<i32: 1, 1, 0, 1, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: -9223372036854775808, 4096>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<?x4096xf16>>, index, index) -> tensor<?x4096xf16>
    %23 = "tensor.empty"(%18) : (index) -> tensor<?xf32>
    %24 = "linalg.fill"(%1, %23) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg2: f32, %arg3: f32):
      "linalg.yield"(%arg2) : (f32) -> ()
    }) : (f32, tensor<?xf32>) -> tensor<?xf32>
    %25 = "linalg.generic"(%22, %24) <{indexing_maps = [#map, #map1], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<reduction>], operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg0: f16, %arg1: f32):
      %26 = "arith.extf"(%arg0) : (f16) -> f32
      %27 = "arith.addf"(%26, %arg1) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      "linalg.yield"(%27) : (f32) -> ()
    }) : (tensor<?x4096xf16>, tensor<?xf32>) -> tensor<?xf32>
    "iree_tensor_ext.dispatch.tensor.store"(%25, %21, %18, %18) <{operandSegmentSizes = array<i32: 1, 1, 1, 0, 1, 0>, static_offsets = array<i64: 0>, static_sizes = array<i64: -9223372036854775808>, static_strides = array<i64: 1>}> : (tensor<?xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?xf32>>, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

