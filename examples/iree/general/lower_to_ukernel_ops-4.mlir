#executable_target_xyz = #hal.executable.target<"llvm-cpu", "xyz", {cpu_features = "+avx512f", target_triple = "x86_64-xyz-xyz", ukernels = "foo,mmt4d,bar"}>
#map = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d2, d3, d5)>
#map1 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d1, d2, d4, d5)>
#map2 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d3, d4)>
"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x?x16x1xf32>, tensor<?x?x16x1xf32>, tensor<?x?x16x16xf32>) -> tensor<?x?x16x16xf32>, sym_name = "mmt4d_f32f32f32_with_only_foo_mmt4d_bar_ukernel_enabled"}> ({
  ^bb0(%arg0: tensor<?x?x16x1xf32>, %arg1: tensor<?x?x16x1xf32>, %arg2: tensor<?x?x16x16xf32>):
    %0 = "linalg.mmt4d"(%arg0, %arg1, %arg2) <{operandSegmentSizes = array<i32: 2, 1>}> ({
    ^bb0(%arg3: f32, %arg4: f32, %arg5: f32):
      %1 = "arith.mulf"(%arg3, %arg4) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      %2 = "arith.addf"(%arg5, %1) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      "linalg.yield"(%2) : (f32) -> ()
    }) {linalg.memoized_indexing_maps = [#map, #map1, #map2]} : (tensor<?x?x16x1xf32>, tensor<?x?x16x1xf32>, tensor<?x?x16x16xf32>) -> tensor<?x?x16x16xf32>
    "func.return"(%0) : (tensor<?x?x16x16xf32>) -> ()
  }) {hal.executable.target = #executable_target_xyz} : () -> ()
}) : () -> ()

