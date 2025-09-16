#map = affine_map<(d0, d1) -> (d0 + d1 + 1)>
"builtin.module"() ({
  "func.func"() <{function_type = (index) -> index, sym_name = "affine.apply"}> ({
  ^bb0(%arg0: index):
    %0 = "affine.apply"(%arg0, %arg0) <{map = #map}> : (index, index) -> index
    %1 = "arith.addi"(%0, %0) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    "func.return"(%1) : (index) -> ()
  }) : () -> ()
}) : () -> ()

