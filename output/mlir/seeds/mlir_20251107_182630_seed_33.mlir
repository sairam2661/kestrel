#map = affine_map<()[s0, s1] -> (s0 + s1)>
"builtin.module"() ({
  "func.func"() <{function_type = (index) -> index, sym_name = "complex_affine"}> ({
  ^bb0(%arg0: index):
    %0 = "arith.constant"() <{value = 42 : index}> : index
    %1 = "arith.addi"(%arg0, %0) : (index, index) -> index
    %2 = "affine.min"(%1) <{map = #map}> : (index) -> index
    "func.return"(%2) : (index) -> ()
  }) : () -> ()
}) : () -> ()