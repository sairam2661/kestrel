#map = affine_map<(d0)[s0] -> (d0 + s0 * 42 - 1)>
#map1 = affine_map<(d0) -> (d0 + 7)>
"builtin.module"() ({
  "func.func"() <{function_type = (index, index) -> index, sym_name = "mix_dims_and_symbols_b"}> ({
  ^bb0(%arg0: index, %arg1: index):
    %0 = "affine.apply"(%arg0, %arg1) <{map = #map}> : (index, index) -> index
    %1 = "affine.apply"(%0) <{map = #map1}> : (index) -> index
    "func.return"(%1) : (index) -> ()
  }) : () -> ()
}) : () -> ()

