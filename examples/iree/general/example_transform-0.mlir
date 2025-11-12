#executable_target_vulkan_spirv_fb = #hal.executable.target<"vulkan-spirv", "vulkan-spirv-fb", {iree_codegen.target_info = #iree_gpu.target<arch = "", features = "spirv:v1.3,cap:Shader", wgp = <compute =  fp32|int32, storage =  b32, subgroup =  shuffle|arithmetic, subgroup_size_choices = [64, 64], max_workgroup_sizes = [128, 128, 64], max_thread_count_per_workgroup = 128, max_workgroup_memory_bytes = 16384, max_workgroup_counts = [65535, 65535, 65535]>>}>
#map = affine_map<(d0, d1) -> (d0, d1)>
#map1 = affine_map<(d0, d1) -> (d0)>
#device_target_vulkan = #hal.device.target<"vulkan", [#executable_target_vulkan_spirv_fb]> : !hal.device
"builtin.module"() <{sym_name = "example"}> ({
  "func.func"() <{function_type = (tensor<1x128xf32>, tensor<1x128xf32>) -> tensor<1xi64>, sym_name = "mixed_invocation"}> ({
  ^bb0(%arg0: tensor<1x128xf32>, %arg1: tensor<1x128xf32>):
    %0 = "arith.addf"(%arg0, %arg1) <{fastmath = #arith.fastmath<none>}> : (tensor<1x128xf32>, tensor<1x128xf32>) -> tensor<1x128xf32>
    %1 = "arith.constant"() <{value = 0 : i64}> : () -> i64
    %2 = "arith.constant"() <{value = 0xFF800000 : f32}> : () -> f32
    %3 = "tensor.empty"() : () -> tensor<1xi64>
    %4 = "linalg.fill"(%1, %3) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg7: i64, %arg8: i64):
      "linalg.yield"(%arg7) : (i64) -> ()
    }) : (i64, tensor<1xi64>) -> tensor<1xi64>
    %5 = "tensor.empty"() : () -> tensor<1xf32>
    %6 = "linalg.fill"(%2, %5) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg5: f32, %arg6: f32):
      "linalg.yield"(%arg5) : (f32) -> ()
    }) : (f32, tensor<1xf32>) -> tensor<1xf32>
    %7:2 = "linalg.generic"(%0, %6, %4) <{indexing_maps = [#map, #map1, #map1], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<reduction>], operandSegmentSizes = array<i32: 1, 2>}> ({
    ^bb0(%arg2: f32, %arg3: f32, %arg4: i64):
      %8 = "linalg.index"() <{dim = 1 : i64}> : () -> index
      %9 = "arith.index_cast"(%8) : (index) -> i64
      %10 = "arith.maximumf"(%arg2, %arg3) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      %11 = "arith.cmpf"(%arg2, %arg3) <{fastmath = #arith.fastmath<none>, predicate = 2 : i64}> : (f32, f32) -> i1
      %12 = "arith.select"(%11, %9, %arg4) : (i1, i64, i64) -> i64
      "linalg.yield"(%10, %12) : (f32, i64) -> ()
    }) : (tensor<1x128xf32>, tensor<1xf32>, tensor<1xi64>) -> (tensor<1xf32>, tensor<1xi64>)
    "func.return"(%7#1) : (tensor<1xi64>) -> ()
  }) : () -> ()
}) {hal.device.targets = [#device_target_vulkan]} : () -> ()

