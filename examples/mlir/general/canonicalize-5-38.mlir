#map = affine_map<(d0)[s0] -> (1000, d0 + 512, s0 + 1)>
"builtin.module"() ({
  "func.func"() <{function_type = (index, index, index) -> (), sym_name = "affine_max"}> ({
  ^bb0(%arg0: index, %arg1: index, %arg2: index):
    %0 = "arith.constant"() <{value = 511 : index}> : () -> index
    %1 = "arith.constant"() <{value = 0 : index}> : () -> index
    %2 = "affine.max"(%1, %0) <{map = #map}> : (index, index) -> index
    "op0"(%2) : (index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

