#map = affine_map<()[s0] -> (s0 + 16, s0 * 8)>
#map1 = affine_map<()[s0, s1, s2] -> (s0, s1, s2 * 2)>
"builtin.module"() ({
  "func.func"() <{function_type = (index, index) -> index, sym_name = "merge_multiple_uses_of_affine_max_ops"}> ({
  ^bb0(%arg0: index, %arg1: index):
    %0 = "affine.max"(%arg0) <{map = #map}> : (index) -> index
    %1 = "affine.max"(%0, %0, %arg1) <{map = #map1}> : (index, index, index) -> index
    "func.return"(%1) : (index) -> ()
  }) : () -> ()
}) : () -> ()

