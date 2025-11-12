#map = affine_map<()[s0] -> (s0 + 32)>
"builtin.module"() ({
  "func.func"() <{function_type = (index) -> index, sym_name = "extract_constant_map_offset"}> ({
  ^bb0(%arg0: index):
    %0 = "affine.apply"(%arg0) <{map = #map}> : (index) -> index
    "func.return"(%0) : (index) -> ()
  }) : () -> ()
}) : () -> ()

