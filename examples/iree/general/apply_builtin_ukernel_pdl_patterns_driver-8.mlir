#executable_target_rocm_hsaco_fb = #hal.executable.target<"rocm", "rocm-hsaco-fb", {iree_codegen.target_info = #iree_gpu.target<arch = "gfx942", features = "", wgp = <compute =  fp16, storage =  b16, subgroup =  none, subgroup_size_choices = [64], max_workgroup_sizes = [1024, 1024, 1024], max_thread_count_per_workgroup = 1024, max_workgroup_memory_bytes = 65536, max_workgroup_counts = [2147483647, 2147483647, 2147483647]>>, ukernels = "none"}>
#map = affine_map<(d0, d1, d2) -> (d0, d2)>
#map1 = affine_map<(d0, d1, d2) -> (d1, d2)>
#map2 = affine_map<(d0, d1, d2) -> (d0, d1)>
"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x128x2x8x4x4x4x8xf8E4M3FNUZ>, tensor<16x128x4x4x4x16x8xf8E4M3FNUZ>) -> tensor<1x16x2x4x8x4x4x16x4xf32>, sym_name = "inner_tiled_f8_large"}> ({
  ^bb0(%arg0: tensor<1x128x2x8x4x4x4x8xf8E4M3FNUZ>, %arg1: tensor<16x128x4x4x4x16x8xf8E4M3FNUZ>):
    %0 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %1 = "tensor.empty"() : () -> tensor<1x16x2x4x8x4x4x16x4xf32>
    %2 = "linalg.fill"(%0, %1) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg2: f32, %arg3: f32):
      "linalg.yield"(%arg2) : (f32) -> ()
    }) : (f32, tensor<1x16x2x4x8x4x4x16x4xf32>) -> tensor<1x16x2x4x8x4x4x16x4xf32>
    %3 = "iree_codegen.inner_tiled"(%arg0, %arg1, %2) <{indexing_maps = [#map, #map1, #map2], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<reduction>], kind = #iree_gpu.data_tiled_mma_layout<intrinsic = MFMA_F32_16x16x32_F8E4M3FNUZ, intrinsics_m = 8, subgroups_m = 2, intrinsics_n = 4, subgroups_n = 4>, operandSegmentSizes = array<i32: 2, 1>}> : (tensor<1x128x2x8x4x4x4x8xf8E4M3FNUZ>, tensor<16x128x4x4x4x16x8xf8E4M3FNUZ>, tensor<1x16x2x4x8x4x4x16x4xf32>) -> tensor<1x16x2x4x8x4x4x16x4xf32>
    "func.return"(%3) : (tensor<1x16x2x4x8x4x4x16x4xf32>) -> ()
  }) : () -> ()
}) {hal.executable.target = #executable_target_rocm_hsaco_fb} : () -> ()

