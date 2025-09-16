#map = affine_map<(d0, d1) -> (d0 - d1)>
"builtin.module"() ({
  "func.func"() <{function_type = (index, index) -> index, sym_name = "partial_fold_map"}> ({
  ^bb0(%arg0: index, %arg1: index):
    %0 = "arith.constant"() <{value = 42 : index}> : () -> index
    %1 = "affine.apply"(%arg0, %0) <{map = #map}> : (index, index) -> index
    "func.return"(%1) : (index) -> ()
  }) : () -> ()
}) : () -> ()

