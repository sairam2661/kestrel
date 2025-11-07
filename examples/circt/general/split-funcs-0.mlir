"builtin.module"() ({
  "func.func"() <{function_type = (i4, i4) -> i4, sym_name = "Simple"}> ({
  ^bb0(%arg2: i4, %arg3: i4):
    %5 = "comb.add"(%arg2, %arg3) : (i4, i4) -> i4
    %6 = "comb.xor"(%arg2, %arg3) : (i4, i4) -> i4
    %7 = "comb.and"(%arg2, %arg3) : (i4, i4) -> i4
    %8 = "comb.add"(%5, %6) : (i4, i4) -> i4
    %9 = "comb.add"(%7, %8) : (i4, i4) -> i4
    "func.return"(%9) : (i4) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i4, i4) -> i4, sym_name = "LongReuse"}> ({
  ^bb0(%arg0: i4, %arg1: i4):
    %0 = "comb.add"(%arg0, %arg1) : (i4, i4) -> i4
    %1 = "comb.xor"(%arg0, %arg1) : (i4, i4) -> i4
    %2 = "comb.and"(%arg0, %arg1) : (i4, i4) -> i4
    %3 = "comb.or"(%arg0, %arg1) : (i4, i4) -> i4
    %4 = "comb.add"(%0, %1) : (i4, i4) -> i4
    "func.return"(%4) : (i4) -> ()
  }) : () -> ()
}) : () -> ()

