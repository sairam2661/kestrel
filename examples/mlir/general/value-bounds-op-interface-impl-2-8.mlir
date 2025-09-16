#map = affine_map<()[s0, s1] -> (s0, s1)>
"builtin.module"() ({
  "func.func"() <{function_type = (index, index) -> (), sym_name = "compare_affine_max"}> ({
  ^bb0(%arg0: index, %arg1: index):
    %0 = "affine.max"(%arg0, %arg1) <{map = #map}> : (index, index) -> index
    "test.compare"(%0, %arg0) <{cmp = "GE"}> : (index, index) -> ()
    "test.compare"(%0, %arg0) <{cmp = "GT"}> : (index, index) -> ()
    "test.compare"(%0, %arg0) <{cmp = "LT"}> : (index, index) -> ()
    "test.compare"(%0, %arg0) <{cmp = "LE"}> : (index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

