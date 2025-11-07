"builtin.module"() ({
  "func.func"() <{arg_attrs = [{secret.secret}, {secret.secret}], function_type = (i32, i1) -> i32, sym_name = "main"}> ({
  ^bb0(%arg0: i32, %arg1: i1):
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 7 : i32}> : () -> i32
    %3 = "arith.muli"(%arg0, %2) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
    %4 = "arith.addi"(%3, %1) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
    %5 = "arith.muli"(%4, %4) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
    %6 = "arith.select"(%arg1, %5, %0) : (i1, i32, i32) -> i32
    "func.return"(%6) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

