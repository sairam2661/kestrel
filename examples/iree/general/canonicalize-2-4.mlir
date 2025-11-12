#map = affine_map<()[s0] -> (s0 * 4)>
"builtin.module"() ({
  "util.func"() <{function_type = (index) -> index, sym_name = "expand_affine", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: index):
    %0 = "affine.apply"(%arg0) <{map = #map}> : (index) -> index
    "util.return"(%0) : (index) -> ()
  }) : () -> ()
}) : () -> ()

