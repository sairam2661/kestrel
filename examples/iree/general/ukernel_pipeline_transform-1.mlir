#executable_target_rocm_hsaco_fb = #hal.executable.target<"rocm", "rocm-hsaco-fb", {ukernels = "argmax"}>
#map = affine_map<(d0, d1) -> (d0, d1)>
#map1 = affine_map<(d0, d1) -> (d0)>
#pipeline_layout = #hal.pipeline.layout<constants = 2, bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "argmax_2d_f32i64"}> ({
    %0 = "arith.constant"() <{value = 32 : i64}> : () -> i64
    %1 = "arith.constant"() <{value = 0xFF800000 : f32}> : () -> f32
    %2 = "arith.constant"() <{value = 0 : i64}> : () -> i64
    %3 = "arith.constant"() <{value = 0 : index}> : () -> index
    %4 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 0 : index}> : () -> i32
    %5 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 1 : index}> : () -> i32
    %6 = "arith.extui"(%4) : (i32) -> i64
    %7 = "arith.extui"(%5) : (i32) -> i64
    %8 = "arith.shli"(%7, %0) <{overflowFlags = #arith.overflow<none>}> : (i64, i64) -> i64
    %9 = "arith.ori"(%6, %8) : (i64, i64) -> i64
    %10 = "arith.index_castui"(%9) : (i64) -> index
    %11 = "hal.interface.binding.subspan"(%3) <{alignment = 64 : index, binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<16xi64>>
    %12 = "iree_tensor_ext.dispatch.workload.ordinal"(%10) <{ordinal = 0 : index}> : (index) -> index
    %13 = "hal.interface.binding.subspan"(%3, %12) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 1>}> : (index, index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<16x?xf32>>
    %14 = "iree_tensor_ext.dispatch.tensor.load"(%13, %12, %12) <{operandSegmentSizes = array<i32: 1, 1, 0, 1, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 16, -9223372036854775808>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<16x?xf32>>, index, index) -> tensor<16x?xf32>
    %15 = "tensor.empty"() : () -> tensor<16xi64>
    %16 = "tensor.empty"() : () -> tensor<16xf32>
    %17 = "linalg.fill"(%2, %15) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg5: i64, %arg6: i64):
      "linalg.yield"(%arg5) : (i64) -> ()
    }) : (i64, tensor<16xi64>) -> tensor<16xi64>
    %18 = "linalg.fill"(%1, %16) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg3: f32, %arg4: f32):
      "linalg.yield"(%arg3) : (f32) -> ()
    }) : (f32, tensor<16xf32>) -> tensor<16xf32>
    %19:2 = "linalg.generic"(%14, %18, %17) <{indexing_maps = [#map, #map1, #map1], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<reduction>], operandSegmentSizes = array<i32: 1, 2>}> ({
    ^bb0(%arg0: f32, %arg1: f32, %arg2: i64):
      %20 = "linalg.index"() <{dim = 1 : i64}> : () -> index
      %21 = "arith.index_cast"(%20) : (index) -> i64
      %22 = "arith.maximumf"(%arg0, %arg1) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      %23 = "arith.cmpf"(%arg0, %arg1) <{fastmath = #arith.fastmath<none>, predicate = 2 : i64}> : (f32, f32) -> i1
      %24 = "arith.select"(%23, %21, %arg2) : (i1, i64, i64) -> i64
      "linalg.yield"(%22, %24) : (f32, i64) -> ()
    }) : (tensor<16x?xf32>, tensor<16xf32>, tensor<16xi64>) -> (tensor<16xf32>, tensor<16xi64>)
    "iree_tensor_ext.dispatch.tensor.store"(%19#1, %11) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0>, static_sizes = array<i64: 16>, static_strides = array<i64: 1>}> : (tensor<16xi64>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<16xi64>>) -> ()
    "func.return"() : () -> ()
  }) {hal.executable.target = #executable_target_rocm_hsaco_fb} : () -> ()
}) : () -> ()

