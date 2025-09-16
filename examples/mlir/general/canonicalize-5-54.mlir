#map = affine_map<()[s0] -> (s0 + 16, s0 * 8)>
#map1 = affine_map<()[s0] -> (s0 + 8, s0 * 4)>
#map2 = affine_map<()[s0, s1, s2] -> (s0, s1 + 7, s2)>
"builtin.module"() ({
  "func.func"() <{function_type = (index, index, index) -> index, sym_name = "merge_multiple_affine_max_ops"}> ({
  ^bb0(%arg0: index, %arg1: index, %arg2: index):
    %0 = "affine.max"(%arg0) <{map = #map}> : (index) -> index
    %1 = "affine.max"(%arg1) <{map = #map1}> : (index) -> index
    %2 = "affine.max"(%0, %arg2, %1) <{map = #map2}> : (index, index, index) -> index
    "func.return"(%2) : (index) -> ()
  }) : () -> ()
}) : () -> ()

