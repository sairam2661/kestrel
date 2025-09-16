#map = affine_map<(d0)[s0] -> (16, d0 - s0)>
#map1 = affine_map<(d0)[s0] -> (s0 * 3, d0)>
#map2 = affine_map<(d0)[s0] -> (s0, -d0 + 5)>
"builtin.module"() ({
  "func.func"() <{function_type = (index, index, index, index) -> (index, index), sym_name = "merge_affine_max_ops"}> ({
  ^bb0(%arg0: index, %arg1: index, %arg2: index, %arg3: index):
    %0 = "affine.max"(%arg0, %arg1) <{map = #map}> : (index, index) -> index
    %1 = "affine.max"(%0, %arg2) <{map = #map1}> : (index, index) -> index
    %2 = "affine.max"(%arg3, %0) <{map = #map2}> : (index, index) -> index
    "func.return"(%1, %2) : (index, index) -> ()
  }) : () -> ()
}) : () -> ()

