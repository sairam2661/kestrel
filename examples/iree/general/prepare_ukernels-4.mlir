#executable_target_xyz = #hal.executable.target<"llvm-cpu", "xyz", {cpu_features = "", target_triple = "x86_64-xyz-xyz", ukernels = "mmt4d"}>
#map = affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d3, d4, d6)>
#map1 = affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d2, d3, d5, d6)>
#map2 = affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d4, d5)>
"builtin.module"() ({
  "func.func"() <{function_type = (tensor<12x10x32x8x1xf32>, tensor<12x80x32x4x1xf32>, tensor<12x10x80x8x4xf32>) -> tensor<12x10x80x8x4xf32>, sym_name = "batch_mmt4d_with_fill_batch_dim"}> ({
  ^bb0(%arg0: tensor<12x10x32x8x1xf32>, %arg1: tensor<12x80x32x4x1xf32>, %arg2: tensor<12x10x80x8x4xf32>):
    %0 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %1 = "linalg.fill"(%0, %arg2) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg6: f32, %arg7: f32):
      "linalg.yield"(%arg6) : (f32) -> ()
    }) : (f32, tensor<12x10x80x8x4xf32>) -> tensor<12x10x80x8x4xf32>
    %2 = "linalg.batch_mmt4d"(%arg0, %arg1, %1) <{operandSegmentSizes = array<i32: 2, 1>}> ({
    ^bb0(%arg3: f32, %arg4: f32, %arg5: f32):
      %3 = "arith.mulf"(%arg3, %arg4) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      %4 = "arith.addf"(%arg5, %3) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      "linalg.yield"(%4) : (f32) -> ()
    }) {linalg.memoized_indexing_maps = [#map, #map1, #map2]} : (tensor<12x10x32x8x1xf32>, tensor<12x80x32x4x1xf32>, tensor<12x10x80x8x4xf32>) -> tensor<12x10x80x8x4xf32>
    "func.return"(%2) : (tensor<12x10x80x8x4xf32>) -> ()
  }) {hal.executable.target = #executable_target_xyz} : () -> ()
}) : () -> ()

