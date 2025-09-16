#map = affine_map<(d0, d1) -> (d0 + d1 + 1)>
#map1 = affine_map<(d0, d1) -> (d0 + d1)>
"builtin.module"() ({
  "func.func"() <{function_type = (index, index) -> (), sym_name = "compare_maps"}> ({
  ^bb0(%arg0: index, %arg1: index):
    "test.compare"(%arg0, %arg1, %arg1, %arg0) <{cmp = "GT", lhs_map = #map, rhs_map = #map1}> : (index, index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

