"builtin.module"() ({
  "func.func"() <{function_type = (i16) -> i16, sym_name = "double_mac"}> ({
  ^bb0(%arg0: i16):
    %0 = "arith.constant"() <{value = 1 : i16}> : () -> i16
    %1 = "arith.constant"() <{value = 2 : i16}> : () -> i16
    %2 = "arith.constant"() <{value = 3 : i16}> : () -> i16
    %3 = "arith.muli"(%arg0, %1) <{overflowFlags = #arith.overflow<none>}> : (i16, i16) -> i16
    %4 = "arith.addi"(%3, %0) <{overflowFlags = #arith.overflow<none>}> : (i16, i16) -> i16
    %5 = "arith.addi"(%4, %2) <{overflowFlags = #arith.overflow<none>}> : (i16, i16) -> i16
    %6 = "arith.muli"(%5, %2) <{overflowFlags = #arith.overflow<none>}> : (i16, i16) -> i16
    %7 = "arith.addi"(%1, %6) <{overflowFlags = #arith.overflow<none>}> : (i16, i16) -> i16
    "func.return"(%7) : (i16) -> ()
  }) : () -> ()
}) : () -> ()

