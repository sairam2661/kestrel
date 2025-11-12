#executable_target_xyz = #hal.executable.target<"llvm-cpu", "xyz", {cpu_features = "+avx512f", target_triple = "x86_64-xyz-xyz", ukernels = "all"}>
#map = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d2, d3, d5)>
#map1 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d1, d2, d4, d5)>
#map2 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d3, d4)>
"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x?x16x1xf16>, tensor<?x?x16x1xf16>, tensor<?x?x16x16xf16>) -> tensor<?x?x16x16xf16>, sym_name = "mmt4d_f16f16f16"}> ({
  ^bb0(%arg0: tensor<?x?x16x1xf16>, %arg1: tensor<?x?x16x1xf16>, %arg2: tensor<?x?x16x16xf16>):
    %0 = "linalg.mmt4d"(%arg0, %arg1, %arg2) <{operandSegmentSizes = array<i32: 2, 1>}> ({
    ^bb0(%arg3: f16, %arg4: f16, %arg5: f16):
      %1 = "arith.mulf"(%arg3, %arg4) <{fastmath = #arith.fastmath<none>}> : (f16, f16) -> f16
      %2 = "arith.addf"(%arg5, %1) <{fastmath = #arith.fastmath<none>}> : (f16, f16) -> f16
      "linalg.yield"(%2) : (f16) -> ()
    }) {linalg.memoized_indexing_maps = [#map, #map1, #map2]} : (tensor<?x?x16x1xf16>, tensor<?x?x16x1xf16>, tensor<?x?x16x16xf16>) -> tensor<?x?x16x16xf16>
    "func.return"(%0) : (tensor<?x?x16x16xf16>) -> ()
  }) {hal.executable.target = #executable_target_xyz} : () -> ()
}) : () -> ()

