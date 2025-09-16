#map = affine_map<(d0, d1, d2) -> (d0, d1, d1, d0, d2)>
#map1 = affine_map<(d0, d1, d2) -> (d0, d0, d1, d2)>
"builtin.module"() ({
  "func.func"() <{function_type = (index, index, index, index) -> (), sym_name = "parallel_min_max"}> ({
  ^bb0(%arg0: index, %arg1: index, %arg2: index, %arg3: index):
    "affine.parallel"(%arg0, %arg1, %arg2, %arg2, %arg3, %arg1) <{lowerBoundsGroups = dense<[2, 1, 2]> : tensor<3xi32>, lowerBoundsMap = #map, reductions = [], steps = [1, 1, 1], upperBoundsGroups = dense<[1, 2, 1]> : tensor<3xi32>, upperBoundsMap = #map1}> ({
    ^bb0(%arg4: index, %arg5: index, %arg6: index):
      "affine.yield"() : () -> ()
    }) : (index, index, index, index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

