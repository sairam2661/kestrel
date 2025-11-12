#executable_target_webgpu_wgsl_fb = #hal.executable.target<"webgpu-spirv", "webgpu-wgsl-fb", {iree_codegen.target_info = #iree_gpu.target<arch = "", features = "spirv:v1.0,cap:Shader,ext:SPV_KHR_storage_buffer_storage_class,ext:SPV_KHR_non_semantic_info", wgp = <compute =  fp32|int32, storage =  b32, subgroup =  none, subgroup_size_choices = [32], max_workgroup_sizes = [128, 128, 64], max_thread_count_per_workgroup = 128, max_workgroup_memory_bytes = 16384, max_workgroup_counts = [65535, 65535, 65535]>>}>
#map = affine_map<(d0) -> (d0)>
#map1 = affine_map<(d0) -> ()>
#device_target_webgpu = #hal.device.target<"webgpu", [#executable_target_webgpu_wgsl_fb]> : !hal.device
"builtin.module"() ({
  "stream.executable"() <{sym_name = "reduce_dispatch", sym_visibility = "public"}> ({
    "stream.executable.export"() <{function_ref = @reduce_dispatch, sym_name = "reduce_dispatch"}> ({
    ^bb0(%arg4: index):
      %7:3 = "iree_tensor_ext.dispatch.workgroup_count_from_dag_root"(%arg4) : (index) -> (index, index, index)
      "stream.return"(%7#0, %7#1, %7#2) : (index, index, index) -> ()
    }) : () -> ()
    "builtin.module"() ({
      "func.func"() <{function_type = (!stream.binding, !stream.binding) -> (), sym_name = "reduce_dispatch"}> ({
      ^bb0(%arg0: !stream.binding, %arg1: !stream.binding):
        %0 = "arith.constant"() <{value = 0 : index}> : () -> index
        %1 = "stream.binding.subspan"(%arg0, %0) : (!stream.binding, index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<16xf32>>
        %2 = "stream.binding.subspan"(%arg1, %0) : (!stream.binding, index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<f32>>
        %3 = "tensor.empty"() : () -> tensor<f32>
        %4 = "iree_tensor_ext.dispatch.tensor.load"(%1) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0>, static_sizes = array<i64: 16>, static_strides = array<i64: 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<16xf32>>) -> tensor<16xf32>
        %5 = "linalg.generic"(%4, %3) <{indexing_maps = [#map, #map1], iterator_types = [#linalg.iterator_type<reduction>], operandSegmentSizes = array<i32: 1, 1>}> ({
        ^bb0(%arg2: f32, %arg3: f32):
          %6 = "arith.addf"(%arg2, %arg3) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
          "linalg.yield"(%6) : (f32) -> ()
        }) : (tensor<16xf32>, tensor<f32>) -> tensor<f32>
        "iree_tensor_ext.dispatch.tensor.store"(%5, %2) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64>, static_sizes = array<i64>, static_strides = array<i64>}> : (tensor<f32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<f32>>) -> ()
        "func.return"() : () -> ()
      }) : () -> ()
    }) : () -> ()
    "stream.executable.end"() : () -> ()
  }) : () -> ()
}) {hal.device.targets = [#device_target_webgpu]} : () -> ()

