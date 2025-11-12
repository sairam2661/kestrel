#executable_target_xyz = #hal.executable.target<"llvm-cpu", "xyz", {cpu_features = "", target_triple = "x86_64-xyz-xyz", ukernels = "mmt4d"}>
#map = affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d3, d4, d6)>
#map1 = affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d2, d3, d5, d6)>
#map2 = affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d4, d5)>
"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x10x32x8x1xf32>, tensor<1x80x32x4x1xf32>, tensor<1x10x80x8x4xf32>) -> tensor<1x10x80x8x4xf32>, sym_name = "batch_mmt4d_with_no_fill"}> ({
  ^bb0(%arg0: tensor<1x10x32x8x1xf32>, %arg1: tensor<1x80x32x4x1xf32>, %arg2: tensor<1x10x80x8x4xf32>):
    %0 = "linalg.batch_mmt4d"(%arg0, %arg1, %arg2) <{operandSegmentSizes = array<i32: 2, 1>}> ({
    ^bb0(%arg3: f32, %arg4: f32, %arg5: f32):
      %1 = "arith.mulf"(%arg3, %arg4) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      %2 = "arith.addf"(%arg5, %1) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      "linalg.yield"(%2) : (f32) -> ()
    }) {linalg.memoized_indexing_maps = [#map, #map1, #map2]} : (tensor<1x10x32x8x1xf32>, tensor<1x80x32x4x1xf32>, tensor<1x10x80x8x4xf32>) -> tensor<1x10x80x8x4xf32>
    "func.return"(%0) : (tensor<1x10x80x8x4xf32>) -> ()
  }) {hal.executable.target = #executable_target_xyz} : () -> ()
}) : () -> ()

