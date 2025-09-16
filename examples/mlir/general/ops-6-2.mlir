#map = affine_map<(d0)[s0] -> (1000, d0 + 512, s0)>
#map1 = affine_map<(d0, d1)[s0] -> (d0 - d1, s0 + 512)>
#map2 = affine_map<()[s0, s1] -> (s0 - s1, 11)>
#map3 = affine_map<() -> (77, 78, 79)>
"builtin.module"() ({
  "func.func"() <{function_type = (index, index, index) -> (), sym_name = "affine_min"}> ({
  ^bb0(%arg3: index, %arg4: index, %arg5: index):
    %4 = "affine.min"(%arg3, %arg4) <{map = #map}> : (index, index) -> index
    %5 = "affine.min"(%arg3, %arg4, %arg5) <{map = #map1}> : (index, index, index) -> index
    %6 = "affine.min"(%arg4, %arg5) <{map = #map2}> : (index, index) -> index
    %7 = "affine.min"() <{map = #map3}> : () -> index
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = (index, index, index) -> (), sym_name = "affine_max"}> ({
  ^bb0(%arg0: index, %arg1: index, %arg2: index):
    %0 = "affine.max"(%arg0, %arg1) <{map = #map}> : (index, index) -> index
    %1 = "affine.max"(%arg0, %arg1, %arg2) <{map = #map1}> : (index, index, index) -> index
    %2 = "affine.max"(%arg1, %arg2) <{map = #map2}> : (index, index) -> index
    %3 = "affine.max"() <{map = #map3}> : () -> index
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

