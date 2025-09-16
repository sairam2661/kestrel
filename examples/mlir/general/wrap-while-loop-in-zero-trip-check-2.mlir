"builtin.module"() ({
  "func.func"() <{function_type = (i32) -> i32, sym_name = "wrap_do_while_loop_in_zero_trip_check"}> ({
  ^bb0(%arg0: i32):
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %2 = "scf.while"(%0) ({
    ^bb0(%arg2: i32):
      %3 = "arith.addi"(%arg2, %1) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      %4 = "arith.cmpi"(%3, %arg0) <{predicate = 2 : i64}> : (i32, i32) -> i1
      "scf.condition"(%4, %3) : (i1, i32) -> ()
    }, {
    ^bb0(%arg1: i32):
      "scf.yield"(%arg1) : (i32) -> ()
    }) : (i32) -> i32
    "func.return"(%2) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

