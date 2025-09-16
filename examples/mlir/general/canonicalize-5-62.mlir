#map = affine_map<()[s0] -> (s0 + 16)>
#map1 = affine_map<()[s0] -> (s0 * 4)>
"builtin.module"() ({
  "func.func"() <{function_type = (index, index) -> (index, index), sym_name = "canonicalize_single_min_max"}> ({
  ^bb0(%arg0: index, %arg1: index):
    %0 = "affine.min"(%arg0) <{map = #map}> : (index) -> index
    %1 = "affine.min"(%arg1) <{map = #map1}> : (index) -> index
    "func.return"(%0, %1) : (index, index) -> ()
  }) : () -> ()
}) : () -> ()

