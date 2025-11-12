#executable_target_amdgcn_amd_amdhsa = #hal.executable.target<"rocm", "amdgcn-amd-amdhsa">
#map = affine_map<(d0) -> (d0)>
#device_target_amdgpu = #hal.device.target<"amdgpu", [#executable_target_amdgcn_amd_amdhsa]> : !hal.device
"builtin.module"() ({
  "stream.executable"() <{sym_name = "add_dispatch_executable", sym_visibility = "public"}> ({
    "stream.executable.export"() <{function_ref = @add_dispatch, sym_name = "add_dispatch"}> ({
    ^bb0(%arg13: index):
      %19:3 = "iree_tensor_ext.dispatch.workgroup_count_from_dag_root"(%arg13) : (index) -> (index, index, index)
      "stream.return"(%19#0, %19#1, %19#2) : (index, index, index) -> ()
    }) : () -> ()
    "builtin.module"() ({
      "func.func"() <{function_type = (!stream.binding, !stream.binding, !stream.binding) -> (), sym_name = "add_dispatch"}> ({
      ^bb0(%arg7: !stream.binding, %arg8: !stream.binding, %arg9: !stream.binding):
        %10 = "arith.constant"() <{value = 0 : index}> : () -> index
        %11 = "stream.binding.subspan"(%arg7, %10) : (!stream.binding, index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<16xf32>>
        %12 = "stream.binding.subspan"(%arg8, %10) : (!stream.binding, index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<16xf32>>
        %13 = "stream.binding.subspan"(%arg9, %10) : (!stream.binding, index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<16xf32>>
        %14 = "tensor.empty"() : () -> tensor<16xf32>
        %15 = "iree_tensor_ext.dispatch.tensor.load"(%11) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0>, static_sizes = array<i64: 16>, static_strides = array<i64: 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<16xf32>>) -> tensor<16xf32>
        %16 = "iree_tensor_ext.dispatch.tensor.load"(%12) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0>, static_sizes = array<i64: 16>, static_strides = array<i64: 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<16xf32>>) -> tensor<16xf32>
        %17 = "linalg.generic"(%15, %16, %14) <{indexing_maps = [#map, #map, #map], iterator_types = [#linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 2, 1>}> ({
        ^bb0(%arg10: f32, %arg11: f32, %arg12: f32):
          %18 = "arith.addf"(%arg10, %arg11) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
          "linalg.yield"(%18) : (f32) -> ()
        }) : (tensor<16xf32>, tensor<16xf32>, tensor<16xf32>) -> tensor<16xf32>
        "iree_tensor_ext.dispatch.tensor.store"(%17, %13) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0>, static_sizes = array<i64: 16>, static_strides = array<i64: 1>}> : (tensor<16xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<16xf32>>) -> ()
        "func.return"() : () -> ()
      }) : () -> ()
    }) : () -> ()
    "stream.executable.end"() : () -> ()
  }) : () -> ()
  "stream.executable"() <{sym_name = "mul_dispatch_executable", sym_visibility = "public"}> ({
    "stream.executable.export"() <{function_ref = @mul_dispatch, sym_name = "mul_dispatch"}> ({
    ^bb0(%arg6: index):
      %9:3 = "iree_tensor_ext.dispatch.workgroup_count_from_dag_root"(%arg6) : (index) -> (index, index, index)
      "stream.return"(%9#0, %9#1, %9#2) : (index, index, index) -> ()
    }) : () -> ()
    "builtin.module"() ({
      "func.func"() <{function_type = (!stream.binding, !stream.binding, !stream.binding) -> (), sym_name = "mul_dispatch"}> ({
      ^bb0(%arg0: !stream.binding, %arg1: !stream.binding, %arg2: !stream.binding):
        %0 = "arith.constant"() <{value = 0 : index}> : () -> index
        %1 = "stream.binding.subspan"(%arg0, %0) : (!stream.binding, index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<16xf32>>
        %2 = "stream.binding.subspan"(%arg1, %0) : (!stream.binding, index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<16xf32>>
        %3 = "stream.binding.subspan"(%arg2, %0) : (!stream.binding, index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<16xf32>>
        %4 = "tensor.empty"() : () -> tensor<16xf32>
        %5 = "iree_tensor_ext.dispatch.tensor.load"(%1) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0>, static_sizes = array<i64: 16>, static_strides = array<i64: 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<16xf32>>) -> tensor<16xf32>
        %6 = "iree_tensor_ext.dispatch.tensor.load"(%2) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0>, static_sizes = array<i64: 16>, static_strides = array<i64: 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<16xf32>>) -> tensor<16xf32>
        %7 = "linalg.generic"(%5, %6, %4) <{indexing_maps = [#map, #map, #map], iterator_types = [#linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 2, 1>}> ({
        ^bb0(%arg3: f32, %arg4: f32, %arg5: f32):
          %8 = "arith.mulf"(%arg3, %arg4) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
          "linalg.yield"(%8) : (f32) -> ()
        }) : (tensor<16xf32>, tensor<16xf32>, tensor<16xf32>) -> tensor<16xf32>
        "iree_tensor_ext.dispatch.tensor.store"(%7, %3) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0>, static_sizes = array<i64: 16>, static_strides = array<i64: 1>}> : (tensor<16xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<16xf32>>) -> ()
        "func.return"() : () -> ()
      }) : () -> ()
    }) : () -> ()
    "stream.executable.end"() : () -> ()
  }) : () -> ()
}) {hal.device.targets = [#device_target_amdgpu]} : () -> ()

