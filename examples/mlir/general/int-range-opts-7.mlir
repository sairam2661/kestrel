"builtin.module"() ({
  "func.func"() <{function_type = () -> i8, sym_name = "test"}> ({
    %0 = "arith.constant"() <{value = 1 : i8}> : () -> i8
    %1 = "test.with_bounds"() <{smax = 127 : i8, smin = 0 : i8, umax = 127 : i8, umin = 0 : i8}> : () -> i8
    %2 = "arith.shli"(%1, %0) <{overflowFlags = #arith.overflow<none>}> : (i8, i8) -> i8
    %3 = "test.reflect_bounds"(%2) : (i8) -> i8
    "func.return"(%3) : (i8) -> ()
  }) : () -> ()
}) : () -> ()

