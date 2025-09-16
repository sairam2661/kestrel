#map = affine_map<()[s0] -> (s0)>
"builtin.module"() ({
  "func.func"() <{function_type = (index) -> index, sym_name = "min.oneval"}> ({
  ^bb0(%arg0: index):
    %0 = "affine.min"(%arg0) <{map = #map}> : (index) -> index
    "func.return"(%0) : (index) -> ()
  }) : () -> ()
}) : () -> ()

