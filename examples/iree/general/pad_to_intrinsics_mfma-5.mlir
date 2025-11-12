#executable_target_rocm_hsaco_fb = #hal.executable.target<"rocm", "rocm-hsaco-fb", {iree_codegen.target_info = #iree_gpu.target<arch = "gfx942", features = "", wgp = <compute =  fp64|fp32|fp16|int64|int32|int16|int8, storage =  b64|b32|b16|b8, subgroup =  shuffle|arithmetic, dot =  dp4xi8toi32, mma = [<MFMA_F32_32x32x8_F16>], subgroup_size_choices = [64], max_workgroup_sizes = [1024, 1024, 1024], max_thread_count_per_workgroup = 1024, max_workgroup_memory_bytes = 65536, max_workgroup_counts = [2147483647, 2147483647, 2147483647]>>, ukernels = "none"}>
#map = affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1 + d4, d2 + d5, d6)>
#map1 = affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d4, d5, d6, d3)>
#map2 = affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>
"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x130x130x4xf16>, tensor<3x3x4x320xf16>, tensor<2x128x128x320xf32>) -> tensor<2x128x128x320xf32>, sym_name = "main2"}> ({
  ^bb0(%arg0: tensor<2x130x130x4xf16>, %arg1: tensor<3x3x4x320xf16>, %arg2: tensor<2x128x128x320xf32>):
    %0 = "linalg.conv_2d_nhwc_hwcf"(%arg0, %arg1, %arg2) <{dilations = dense<1> : vector<2xi64>, operandSegmentSizes = array<i32: 2, 1>, strides = dense<1> : vector<2xi64>}> ({
    ^bb0(%arg3: f16, %arg4: f16, %arg5: f32):
      %1 = "arith.extf"(%arg3) : (f16) -> f32
      %2 = "arith.extf"(%arg4) : (f16) -> f32
      %3 = "arith.mulf"(%1, %2) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      %4 = "arith.addf"(%arg5, %3) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      "linalg.yield"(%4) : (f32) -> ()
    }) {linalg.memoized_indexing_maps = [#map, #map1, #map2]} : (tensor<2x130x130x4xf16>, tensor<3x3x4x320xf16>, tensor<2x128x128x320xf32>) -> tensor<2x128x128x320xf32>
    "func.return"(%0) : (tensor<2x128x128x320xf32>) -> ()
  }) {hal.executable.target = #executable_target_rocm_hsaco_fb} : () -> ()
}) : () -> ()

