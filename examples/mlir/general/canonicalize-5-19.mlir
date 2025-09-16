#map = affine_map<(d0) -> (d0 * 4)>
#map1 = affine_map<()[s0, s1] -> (s0 * 4)>
#map2 = affine_map<()[s0, s1] -> (s1)>
#map3 = affine_map<()[s0, s1] -> (1024)>
"builtin.module"() ({
  "func.func"() <{function_type = (index, index) -> (index, index, index), sym_name = "mix_dims_and_symbols_g"}> ({
  ^bb0(%arg0: index, %arg1: index):
    %0 = "affine.apply"(%arg0) <{map = #map}> : (index) -> index
    %1 = "affine.apply"(%arg1, %0) <{map = #map1}> : (index, index) -> index
    %2 = "affine.apply"(%arg1, %0) <{map = #map2}> : (index, index) -> index
    %3 = "affine.apply"(%arg1, %0) <{map = #map3}> : (index, index) -> index
    "func.return"(%1, %2, %3) : (index, index, index) -> ()
  }) : () -> ()
}) : () -> ()

