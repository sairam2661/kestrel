"builtin.module"() ({
  "func.func"() <{function_type = () -> i8, sym_name = "non_const_rhs"}> ({
    %0 = "arith.constant"() <{value = 64 : i8}> : () -> i8
    %1 = "test.with_bounds"() <{smax = 2 : si8, smin = 0 : si8, umax = 2 : ui8, umin = 0 : ui8}> : () -> i8
    %2 = "test.with_bounds"() <{smax = 64 : si8, smin = 63 : si8, umax = 64 : ui8, umin = 63 : ui8}> : () -> i8
    %3 = "arith.remui"(%1, %2) : (i8, i8) -> i8
    "func.return"(%3) : (i8) -> ()
  }) : () -> ()
}) : () -> ()

