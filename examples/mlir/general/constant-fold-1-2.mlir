#map = affine_map<(d0, d1) -> (d0, d1)>
"builtin.module"() ({
  "func.func"() <{function_type = (index) -> (index, index), sym_name = "affine_min"}> ({
  ^bb0(%arg0: index):
    %0 = "arith.constant"() <{value = 42 : index}> : () -> index
    %1 = "arith.constant"() <{value = 44 : index}> : () -> index
    %2 = "affine.max"(%0, %arg0) <{map = #map}> : (index, index) -> index
    %3 = "affine.max"(%0, %1) <{map = #map}> : (index, index) -> index
    "func.return"(%2, %3) : (index, index) -> ()
  }) : () -> ()
}) : () -> ()

