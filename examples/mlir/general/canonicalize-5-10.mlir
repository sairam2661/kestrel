#map = affine_map<(d0) -> (d0 * 4)>
#map1 = affine_map<()[s0, s1] -> (s0 * 8)>
#map2 = affine_map<()[s0, s1] -> (s1 * 16)>
"builtin.module"() ({
  "func.func"() <{function_type = (index, index) -> index, sym_name = "symbolic_composition_a"}> ({
  ^bb0(%arg0: index, %arg1: index):
    %0 = "affine.apply"(%arg0) <{map = #map}> : (index) -> index
    %1 = "affine.apply"(%0, %arg0) <{map = #map1}> : (index, index) -> index
    %2 = "affine.apply"(%arg1, %1) <{map = #map2}> : (index, index) -> index
    "func.return"(%2) : (index) -> ()
  }) : () -> ()
}) : () -> ()

