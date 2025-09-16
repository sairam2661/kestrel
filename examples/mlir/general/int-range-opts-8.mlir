"builtin.module"() ({
  "func.func"() <{function_type = () -> i8, sym_name = "trivial_rem"}> ({
    %0 = "arith.constant"() <{value = 64 : i8}> : () -> i8
    %1 = "test.with_bounds"() <{smax = 63 : si8, smin = 0 : si8, umax = 63 : ui8, umin = 0 : ui8}> : () -> i8
    %2 = "arith.remsi"(%1, %0) : (i8, i8) -> i8
    "func.return"(%2) : (i8) -> ()
  }) : () -> ()
}) : () -> ()

