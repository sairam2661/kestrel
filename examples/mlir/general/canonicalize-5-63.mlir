#map = affine_map<()[s0, s1] -> (s0 + s1, s1 + 16, 32)>
#map1 = affine_map<()[s0, s1] -> (s0 + s1, 32, s1 + 16)>
"builtin.module"() ({
  "func.func"() <{function_type = (index, index) -> (index, index), sym_name = "canonicalize_multi_min_max"}> ({
  ^bb0(%arg0: index, %arg1: index):
    %0 = "affine.min"(%arg0, %arg1) <{map = #map}> : (index, index) -> index
    %1 = "affine.max"(%arg0, %arg1) <{map = #map1}> : (index, index) -> index
    "func.return"(%0, %1) : (index, index) -> ()
  }) : () -> ()
}) : () -> ()

