"builtin.module"() ({
  "func.func"() <{arg_attrs = [{secret.secret}], function_type = (i32) -> (i1, i32), sym_name = "multiple_outputs"}> ({
  ^bb0(%arg0: i32):
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 7 : i32}> : () -> i32
    %3 = "arith.muli"(%arg0, %2) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
    %4 = "arith.addi"(%3, %1) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
    %5 = "arith.muli"(%4, %4) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
    %6 = "arith.cmpi"(%arg0, %0) <{predicate = 2 : i64}> : (i32, i32) -> i1
    "func.return"(%6, %5) : (i1, i32) -> ()
  }) : () -> ()
}) : () -> ()

