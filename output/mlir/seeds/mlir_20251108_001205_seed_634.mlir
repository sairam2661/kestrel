"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "edgeCaseFunction"}> ({
  ^bb0:
    %0 = "arith.constant"() <{value = #floatAttr}  >: () -> f32
    %1 = "arith.cmpf"(%0, %0) <{predicate = #arith_cmp_predicate_eq}> : (f32, f32) -> i1
    %2 = "tosa.const"() <{value = #intAttr}  > : () -> i32
    %3 = "arith.addf"(%0, %0) : (f32, f32) -> f32
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()