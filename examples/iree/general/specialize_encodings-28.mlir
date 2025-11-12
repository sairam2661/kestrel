#executable_target_abc = #hal.executable.target<"target_a", "abc", {iree.encoding.resolver = #iree_encoding.specialization_resolver<123>}>
#executable_target_xyz = #hal.executable.target<"target_b", "xyz", {iree.encoding.resolver = #iree_encoding.specialization_resolver<456>}>
#map = affine_map<(d0, d1, d2) -> (d0, d2)>
#map1 = affine_map<(d0, d1, d2) -> (d2, d1)>
#map2 = affine_map<(d0, d1, d2) -> (d0, d1)>
#device_target_local_0_ = #hal.device.target<"local", {ordinal = 0 : index}, [#executable_target_abc]> : !hal.device
#device_target_local_1_ = #hal.device.target<"local", {ordinal = 1 : index}, [#executable_target_xyz]> : !hal.device
#encoding = #iree_encoding.encoding<operand_index = 0 : index, op_type =  matmul, element_types = [f32, f32, f32], user_indexing_maps = [#map, #map1, #map2]>
#encoding1 = #iree_encoding.encoding<operand_index = 1 : index, op_type =  matmul, element_types = [f32, f32, f32], user_indexing_maps = [#map, #map1, #map2]>
#encoding2 = #iree_encoding.encoding<operand_index = 2 : index, op_type =  matmul, element_types = [f32, f32, f32], user_indexing_maps = [#map, #map1, #map2]>
"builtin.module"() ({
  "util.global"() <{initial_value = #device_target_local_0_, sym_name = "device_a", sym_visibility = "private", type = !hal.device}> : () -> ()
  "util.global"() <{initial_value = #device_target_local_1_, sym_name = "device_b", sym_visibility = "private", type = !hal.device}> : () -> ()
  "stream.executable"() <{sym_name = "ex", sym_visibility = "private"}> ({
    "stream.executable.export"() <{function_ref = @gemm, sym_name = "gemm", sym_visibility = "public"}> ({
    }) : () -> ()
    "builtin.module"() ({
      "func.func"() <{function_type = (!stream.binding, !stream.binding, index, index, index, index, !stream.binding) -> (), sym_name = "gemm"}> ({
      ^bb0(%arg7: !stream.binding, %arg8: !stream.binding, %arg9: index, %arg10: index, %arg11: index, %arg12: index, %arg13: !stream.binding):
        %11 = "arith.constant"() <{value = 0 : index}> : () -> index
        %12 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
        %13 = "iree_tensor_ext.dispatch.workload.ordinal"(%arg9) <{ordinal = 0 : index}> : (index) -> index
        %14 = "iree_tensor_ext.dispatch.workload.ordinal"(%arg10) <{ordinal = 1 : index}> : (index) -> index
        %15 = "iree_tensor_ext.dispatch.workload.ordinal"(%arg11) <{ordinal = 2 : index}> : (index) -> index
        %16 = "iree_tensor_ext.dispatch.workload.ordinal"(%arg12) <{ordinal = 3 : index}> : (index) -> index
        %17 = "stream.binding.subspan"(%arg7, %11, %15, %13) : (!stream.binding, index, index, index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<?x?xf32, #encoding>>
        %18 = "stream.binding.subspan"(%arg8, %11, %14, %16) : (!stream.binding, index, index, index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<?x?xf32, #encoding1>>
        %19 = "stream.binding.subspan"(%arg13, %11, %15, %16) : (!stream.binding, index, index, index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?x?xf32, #encoding2>>
        %20 = "iree_tensor_ext.dispatch.tensor.load"(%17, %15, %13, %15, %13) <{operandSegmentSizes = array<i32: 1, 2, 0, 2, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: -9223372036854775808, -9223372036854775808>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<?x?xf32, #encoding>>, index, index, index, index) -> tensor<?x?xf32, #encoding>
        %21 = "iree_tensor_ext.dispatch.tensor.load"(%18, %14, %16, %14, %16) <{operandSegmentSizes = array<i32: 1, 2, 0, 2, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: -9223372036854775808, -9223372036854775808>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<?x?xf32, #encoding1>>, index, index, index, index) -> tensor<?x?xf32, #encoding1>
        %22 = "tensor.empty"(%15, %16) : (index, index) -> tensor<?x?xf32, #encoding2>
        %23 = "linalg.fill"(%12, %22) <{operandSegmentSizes = array<i32: 1, 1>}> ({
        ^bb0(%arg17: f32, %arg18: f32):
          "linalg.yield"(%arg17) : (f32) -> ()
        }) : (f32, tensor<?x?xf32, #encoding2>) -> tensor<?x?xf32, #encoding2>
        %24 = "linalg.matmul"(%20, %21, %23) <{indexing_maps = [#map, #map1, #map2], operandSegmentSizes = array<i32: 2, 1>}> ({
        ^bb0(%arg14: f32, %arg15: f32, %arg16: f32):
          %25 = "arith.mulf"(%arg14, %arg15) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
          %26 = "arith.addf"(%arg16, %25) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
          "linalg.yield"(%26) : (f32) -> ()
        }) : (tensor<?x?xf32, #encoding>, tensor<?x?xf32, #encoding1>, tensor<?x?xf32, #encoding2>) -> tensor<?x?xf32, #encoding2>
        "iree_tensor_ext.dispatch.tensor.store"(%24, %19, %15, %16, %15, %16) <{operandSegmentSizes = array<i32: 1, 1, 2, 0, 2, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: -9223372036854775808, -9223372036854775808>, static_strides = array<i64: 1, 1>}> : (tensor<?x?xf32, #encoding2>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?x?xf32, #encoding2>>, index, index, index, index) -> ()
        "func.return"() : () -> ()
      }) : () -> ()
    }) : () -> ()
    "stream.executable.end"() : () -> ()
  }) : () -> ()
  "util.func"() <{function_type = (!stream.resource<external>, !stream.resource<external>, !stream.resource<external>, !stream.resource<external>, index, index, index) -> (), sym_name = "multi_device_gemm", sym_visibility = "public"}> ({
  ^bb0(%arg0: !stream.resource<external>, %arg1: !stream.resource<external>, %arg2: !stream.resource<external>, %arg3: !stream.resource<external>, %arg4: index, %arg5: index, %arg6: index):
    %0 = "arith.muli"(%arg4, %arg6) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    %1 = "arith.muli"(%arg5, %arg6) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    %2 = "arith.muli"(%arg4, %arg5) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    %3 = "stream.async.transfer"(%arg0, %0, %0) <{source_affinity = #hal.device.affinity<@device_a>, target_affinity = #hal.device.affinity<@device_a>}> : (!stream.resource<external>, index, index) -> !stream.resource<*>
    %4 = "stream.async.transfer"(%arg1, %1, %1) <{source_affinity = #hal.device.affinity<@device_a>, target_affinity = #hal.device.affinity<@device_a>}> : (!stream.resource<external>, index, index) -> !stream.resource<*>
    %5 = "stream.tensor.dispatch"(%3, %4, %arg6, %arg6, %arg4, %arg5, %0, %1, %arg4, %arg6, %arg5, %arg6, %2, %arg4, %arg5) <{affinity = #hal.device.affinity<@device_a>, entry_points = [@ex::@gemm], operandSegmentSizes = array<i32: 0, 6, 2, 4, 1, 2>, operand_encodings = [tensor<?x?xf32, #encoding>, tensor<?x?xf32, #encoding1>, !util.unused, !util.unused, !util.unused, !util.unused], result_encodings = [tensor<?x?xf32, #encoding2>], tied_operands = [-1 : index]}> : (!stream.resource<*>, !stream.resource<*>, index, index, index, index, index, index, index, index, index, index, index, index, index) -> !stream.resource<*>
    %6 = "util.optimization_barrier"(%5) : (!stream.resource<*>) -> !stream.resource<*>
    %7 = "stream.async.transfer"(%arg2, %0, %0) <{source_affinity = #hal.device.affinity<@device_b>, target_affinity = #hal.device.affinity<@device_b>}> : (!stream.resource<external>, index, index) -> !stream.resource<*>
    %8 = "stream.async.transfer"(%arg3, %1, %1) <{source_affinity = #hal.device.affinity<@device_b>, target_affinity = #hal.device.affinity<@device_b>}> : (!stream.resource<external>, index, index) -> !stream.resource<*>
    %9 = "stream.tensor.dispatch"(%7, %8, %arg6, %arg6, %arg4, %arg5, %0, %1, %arg4, %arg6, %arg5, %arg6, %2, %arg4, %arg5) <{affinity = #hal.device.affinity<@device_b>, entry_points = [@ex::@gemm], operandSegmentSizes = array<i32: 0, 6, 2, 4, 1, 2>, operand_encodings = [tensor<?x?xf32, #encoding>, tensor<?x?xf32, #encoding1>, !util.unused, !util.unused, !util.unused, !util.unused], result_encodings = [tensor<?x?xf32, #encoding2>], tied_operands = [-1 : index]}> : (!stream.resource<*>, !stream.resource<*>, index, index, index, index, index, index, index, index, index, index, index, index, index) -> !stream.resource<*>
    %10 = "util.optimization_barrier"(%9) : (!stream.resource<*>) -> !stream.resource<*>
    "util.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

