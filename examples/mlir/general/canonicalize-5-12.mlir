#map = affine_map<(d0) -> (d0)>
#map1 = affine_map<()[s0, s1, s2, s3] -> (s0 + s1 + s2 + s3)>
"builtin.module"() ({
  "func.func"() <{function_type = (index, index, index, index) -> index, sym_name = "symbolic_composition_c"}> ({
  ^bb0(%arg0: index, %arg1: index, %arg2: index, %arg3: index):
    %0 = "affine.apply"(%arg0) <{map = #map}> : (index) -> index
    %1 = "affine.apply"(%arg1) <{map = #map}> : (index) -> index
    %2 = "affine.apply"(%0, %0, %0, %1) <{map = #map1}> : (index, index, index, index) -> index
    "func.return"(%2) : (index) -> ()
  }) : () -> ()
}) : () -> ()

