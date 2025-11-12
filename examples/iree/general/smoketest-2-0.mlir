#executable_target_vmvx_bytecode_fb = #hal.executable.target<"vmvx", "vmvx-bytecode-fb">
#map = affine_map<(d0) -> (d0)>
#device_target_local = #hal.device.target<"local", [#executable_target_vmvx_bytecode_fb]> : !hal.device
"builtin.module"() ({
  "stream.executable"() <{sym_name = "add_dispatch_0", sym_visibility = "public"}> ({
    "stream.executable.export"() <{function_ref = @add_dispatch_0, sym_name = "add_dispatch_0"}> ({
    ^bb0(%arg6: index):
      %9:3 = "iree_tensor_ext.dispatch.workgroup_count_from_dag_root"(%arg6) : (index) -> (index, index, index)
      "stream.return"(%9#0, %9#1, %9#2) : (index, index, index) -> ()
    }) : () -> ()
    "builtin.module"() ({
      "func.func"() <{function_type = (!stream.binding, !stream.binding, !stream.binding) -> (), sym_name = "add_dispatch_0"}> ({
      ^bb0(%arg0: !stream.binding, %arg1: !stream.binding, %arg2: !stream.binding):
        %0 = "arith.constant"() <{value = 0 : index}> : () -> index
        %1 = "stream.binding.subspan"(%arg0, %0) : (!stream.binding, index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<128xf32>>
        %2 = "stream.binding.subspan"(%arg1, %0) : (!stream.binding, index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<128xf32>>
        %3 = "stream.binding.subspan"(%arg2, %0) : (!stream.binding, index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<128xf32>>
        %4 = "tensor.empty"() : () -> tensor<128xf32>
        %5 = "iree_tensor_ext.dispatch.tensor.load"(%1) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0>, static_sizes = array<i64: 128>, static_strides = array<i64: 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<128xf32>>) -> tensor<128xf32>
        %6 = "iree_tensor_ext.dispatch.tensor.load"(%2) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0>, static_sizes = array<i64: 128>, static_strides = array<i64: 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<128xf32>>) -> tensor<128xf32>
        %7 = "linalg.generic"(%5, %6, %4) <{indexing_maps = [#map, #map, #map], iterator_types = [#linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 2, 1>}> ({
        ^bb0(%arg3: f32, %arg4: f32, %arg5: f32):
          %8 = "arith.addf"(%arg3, %arg4) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
          "linalg.yield"(%8) : (f32) -> ()
        }) : (tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) -> tensor<128xf32>
        "iree_tensor_ext.dispatch.tensor.store"(%7, %3) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0>, static_sizes = array<i64: 128>, static_strides = array<i64: 1>}> : (tensor<128xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<128xf32>>) -> ()
        "func.return"() : () -> ()
      }) : () -> ()
    }) : () -> ()
    "stream.executable.end"() : () -> ()
  }) : () -> ()
}) {hal.device.targets = [#device_target_local]} : () -> ()

