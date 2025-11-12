#executable_target_xyz = #hal.executable.target<"llvm-cpu", "xyz", {cpu_features = "+avx512vnni", target_triple = "x86_64-xyz-xyz", ukernels = "all"}>
#map = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d2, d3, d5)>
#map1 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d1, d2, d4, d5)>
#map2 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d3, d4)>
"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x?x16x2xi16>, tensor<?x?x16x2xi16>, tensor<?x?x16x16xi32>) -> tensor<?x?x16x16xi32>, sym_name = "mmt4d_i16i16i32"}> ({
  ^bb0(%arg0: tensor<?x?x16x2xi16>, %arg1: tensor<?x?x16x2xi16>, %arg2: tensor<?x?x16x16xi32>):
    %0 = "linalg.mmt4d"(%arg0, %arg1, %arg2) <{operandSegmentSizes = array<i32: 2, 1>}> ({
    ^bb0(%arg3: i16, %arg4: i16, %arg5: i32):
      %1 = "arith.extsi"(%arg3) : (i16) -> i32
      %2 = "arith.extsi"(%arg4) : (i16) -> i32
      %3 = "arith.muli"(%1, %2) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      %4 = "arith.addi"(%arg5, %3) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      "linalg.yield"(%4) : (i32) -> ()
    }) {linalg.memoized_indexing_maps = [#map, #map1, #map2]} : (tensor<?x?x16x2xi16>, tensor<?x?x16x2xi16>, tensor<?x?x16x16xi32>) -> tensor<?x?x16x16xi32>
    "func.return"(%0) : (tensor<?x?x16x16xi32>) -> ()
  }) {hal.executable.target = #executable_target_xyz} : () -> ()
}) : () -> ()

