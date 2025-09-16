#map = affine_map<()[s0] -> (s0 + 16, s0 * 8)>
#map1 = affine_map<()[s0, s1] -> (s0 + 4, s1 + 7)>
"builtin.module"() ({
  "func.func"() <{function_type = (index, index, index) -> index, sym_name = "dont_merge_affine_min_if_not_single_sym"}> ({
  ^bb0(%arg0: index, %arg1: index, %arg2: index):
    %0 = "affine.min"(%arg0) <{map = #map}> : (index) -> index
    %1 = "affine.min"(%0, %arg2) <{map = #map1}> : (index, index) -> index
    "func.return"(%1) : (index) -> ()
  }) : () -> ()
}) : () -> ()

