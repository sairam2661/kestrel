#executable_target_rocm_hsaco_fb = #hal.executable.target<"rocm", "rocm-hsaco-fb", {iree_codegen.target_info = #iree_gpu.target<arch = "gfx942", features = "", wgp = <compute =  fp16, storage =  b16, subgroup =  none, subgroup_size_choices = [64], max_workgroup_sizes = [1024, 1024, 1024], max_thread_count_per_workgroup = 1024, max_workgroup_memory_bytes = 65536, max_workgroup_counts = [2147483647, 2147483647, 2147483647]>>, ukernels = "none"}>
#map = affine_map<(d0, d1, d2, d3) -> (d0, d1, d3)>
#map1 = affine_map<(d0, d1, d2, d3) -> (d2, d3)>
#map2 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>
"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x128x4096xf16>, tensor<1024x4096xf16>) -> tensor<1x128x1024xf32>, sym_name = "matmul_f16_medium_expanded"}> ({
  ^bb0(%arg0: tensor<1x128x4096xf16>, %arg1: tensor<1024x4096xf16>):
    %0 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %1 = "tensor.empty"() : () -> tensor<1x128x1024xf32>
    %2 = "linalg.fill"(%0, %1) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg5: f32, %arg6: f32):
      "linalg.yield"(%arg5) : (f32) -> ()
    }) : (f32, tensor<1x128x1024xf32>) -> tensor<1x128x1024xf32>
    %3 = "linalg.generic"(%arg0, %arg1, %2) <{indexing_maps = [#map, #map1, #map2], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<reduction>], operandSegmentSizes = array<i32: 2, 1>}> ({
    ^bb0(%arg2: f16, %arg3: f16, %arg4: f32):
      %4 = "arith.extf"(%arg2) : (f16) -> f32
      %5 = "arith.extf"(%arg3) : (f16) -> f32
      %6 = "arith.mulf"(%4, %5) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      %7 = "arith.addf"(%arg4, %6) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      "linalg.yield"(%7) : (f32) -> ()
    }) : (tensor<1x128x4096xf16>, tensor<1024x4096xf16>, tensor<1x128x1024xf32>) -> tensor<1x128x1024xf32>
    "func.return"(%3) : (tensor<1x128x1024xf32>) -> ()
  }) : () -> ()
}) {hal.executable.target = #executable_target_rocm_hsaco_fb} : () -> ()

