#executable_target_xyz = #hal.executable.target<"llvm-cpu", "xyz", {cpu_features = "+avx512bf16", target_triple = "x86_64-xyz-xyz", ukernels = "all"}>
#map = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d2, d3, d5)>
#map1 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d1, d2, d4, d5)>
#map2 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d3, d4)>
"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x?x16x2xbf16>, tensor<?x?x16x2xbf16>, tensor<?x?x16x16xf32>) -> tensor<?x?x16x16xf32>, sym_name = "mmt4d_bf16bf16f32"}> ({
  ^bb0(%arg0: tensor<?x?x16x2xbf16>, %arg1: tensor<?x?x16x2xbf16>, %arg2: tensor<?x?x16x16xf32>):
    %0 = "linalg.mmt4d"(%arg0, %arg1, %arg2) <{operandSegmentSizes = array<i32: 2, 1>}> ({
    ^bb0(%arg3: bf16, %arg4: bf16, %arg5: f32):
      %1 = "arith.extf"(%arg3) : (bf16) -> f32
      %2 = "arith.extf"(%arg4) : (bf16) -> f32
      %3 = "arith.mulf"(%1, %2) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      %4 = "arith.addf"(%arg5, %3) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      "linalg.yield"(%4) : (f32) -> ()
    }) {linalg.memoized_indexing_maps = [#map, #map1, #map2]} : (tensor<?x?x16x2xbf16>, tensor<?x?x16x2xbf16>, tensor<?x?x16x16xf32>) -> tensor<?x?x16x16xf32>
    "func.return"(%0) : (tensor<?x?x16x16xf32>) -> ()
  }) {hal.executable.target = #executable_target_xyz} : () -> ()
}) : () -> ()

