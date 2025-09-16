#map = affine_map<() -> (4)>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "compare_const_map"}> ({
    %0 = "arith.constant"() <{value = 5 : index}> : () -> index
    "test.compare"(%0) <{cmp = "GT", rhs_map = #map}> : (index) -> ()
    "test.compare"(%0) <{cmp = "LT", lhs_map = #map}> : (index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

